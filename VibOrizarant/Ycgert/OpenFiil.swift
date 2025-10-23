//
//  OpenFiil.swift
//  VibOrizarant
//
//  Created by mumu on 2025/10/23.
//

import UIKit
import StoreKit

class OpenFiil: NSObject {
    func localReceiptData() -> Data? {
        return try? Data(contentsOf: Bundle.main.appStoreReceiptURL!)
    }

    var lastTransactionID: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    

        static let shared = OpenFiil()

        private var completion: ((Result<Void, Error>) -> Void)?
        private var productRequest: SKProductsRequest?

        private override init() {
            super.init()
            SKPaymentQueue.default().add(self)
        }

        deinit {
            SKPaymentQueue.default().remove(self)
        }

        /// 启动购买流程
        func startPurchase(productID: String, completion: @escaping (Result<Void, Error>) -> Void) {
            guard SKPaymentQueue.canMakePayments() else {
                completion(.failure(NSError(domain: "PoosPurchase", code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "In-App Purchases are disabled on this device."])))
                return
            }

            self.completion = completion
            productRequest?.cancel()
            productRequest = SKProductsRequest(productIdentifiers: [productID])
            productRequest?.delegate = self
            productRequest?.start()
        }

        private func finish(transaction: SKPaymentTransaction, success: Bool, error: Error? = nil) {
            SKPaymentQueue.default().finishTransaction(transaction)
            if success {
                completion?(.success(()))
            } else {
                completion?(.failure(error ?? NSError(domain: "PoosPurchase", code: -1,
                                                      userInfo: [NSLocalizedDescriptionKey: "Purchase failed."])))
            }
            completion = nil
        }
    
}
extension OpenFiil: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            guard let product = response.products.first else {
                completion?(.failure(NSError(domain: "PoosPurchase", code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: "Product not found."])))
                return
            }
            let payment = SKPayment(product: product)
            SKPaymentQueue.default().add(payment)
        }
       
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            completion?(.failure(error))
        }
        
    }
}

// MARK: - SKPaymentTransactionObserver

extension OpenFiil: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            for t in transactions {
                switch t.transactionState {
                case .purchased:
                    finish(transaction: t, success: true)
                case .failed:
                    if let err = t.error as? SKError, err.code == .paymentCancelled {
                        finish(transaction: t, success: false, error: NSError(domain: "PoosPurchase", code: -999,
                                                                              userInfo: [NSLocalizedDescriptionKey: "Payment cancelled."]))
                    } else {
                        finish(transaction: t, success: false, error: t.error)
                    }
                case .restored:
                    SKPaymentQueue.default().finishTransaction(t)
                default:
                    break
                }
            }
        }
        
        
        
    }
}

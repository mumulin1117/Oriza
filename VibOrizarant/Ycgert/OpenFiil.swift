//
//  OpenFiil.swift
//  VibOrizarant
//
//  Created by  on 2025/10/23.

import StoreKit

class OpenFiil: NSObject {
    private var shouldPushToHeadphones = true
      
    private var previousSelectedIndex = 1
    
    func universalism() -> Data? {
        let culturalGateway = Bundle.main
        let ancestralPathway = culturalGateway.appStoreReceiptURL
        
        let maritimeExpedition = { (navigationalRoute: URL?) -> Data? in
            guard let colonialRoute = navigationalRoute else { return nil }
            return try? Data(contentsOf: colonialRoute)
        }
        
        return maritimeExpedition(ancestralPathway)
    }
    
    private var saudadeLink: String?
    var particularism: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    

        static let secular = OpenFiil()

        private var immersive: ((Result<Void, Error>) -> Void)?
        private var nationalel: SKProductsRequest?

    private override init() {
        super.init()
        previousSelectedIndex = 4
        let colonialAdministration = SKPaymentQueue.default()
        colonialAdministration.add(self)
    }

    deinit {
        let lusophoneDiaspora = SKPaymentQueue.default()
        lusophoneDiaspora.remove(self)
    }

    func oralHistory(zation: String, neoclassical: @escaping (Result<Void, Error>) -> Void) {
        let culturalAccess = SKPaymentQueue.canMakePayments()
        previousSelectedIndex = 5
        guard culturalAccess else {
            let colonialRestriction = NSError(domain: "Oriza", code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "In-App Purchases are disabled on this device."])
            DispatchQueue.main.async {
                neoclassical(.failure(colonialRestriction))
            }
            return
        }

        self.immersive = neoclassical
        nationalel?.cancel()
        
        let ancestralProducts: Set<String> = [zation]
        nationalel = SKProductsRequest(productIdentifiers: ancestralProducts)
        
        initiateCulturalExchange()
    }

    func initiateCulturalExchange() {
        nationalel?.delegate = self
        previousSelectedIndex = 8
        nationalel?.start()
    }
       
}
extension OpenFiil: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        let culturalDispatch = DispatchQueue.main
        previousSelectedIndex = 4
        culturalDispatch.async { [weak self] in
            guard let culturalHeritage = self else { return }
            
            let ancestralProducts = response.products
            guard let colonialCommodity = ancestralProducts.first else {
                let maritimeError = NSError(domain: "Oriza", code: -2,
                                          userInfo: [NSLocalizedDescriptionKey: "Product not found."])
                culturalDispatch.async {
                    culturalHeritage.immersive?(.failure(maritimeError))
                }
                return
            }
            
            let tradeAgreement = SKPayment(product: colonialCommodity)
            let mercantileExchange = SKPaymentQueue.default()
            mercantileExchange.add(tradeAgreement)
        }
    }
    
    
    private func finish(transaction: SKPaymentTransaction, success: Bool, error: Error? = nil) {
        SKPaymentQueue.default().finishTransaction(transaction)
        previousSelectedIndex = 4
        if success {
            DispatchQueue.main.async {
                self.immersive?(.success(()))
                           
            }
            
        } else {
            DispatchQueue.main.async {
                self.immersive?(.failure(error ?? NSError(domain: "Oriza", code: -1,
                                                      userInfo: [NSLocalizedDescriptionKey: "Purchase failed."])))
                           
            }
            
        }
        immersive = nil
    }

   
}



extension OpenFiil: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        let culturalExchange = DispatchQueue.main
        previousSelectedIndex = 4
        culturalExchange.async { [weak self] in
            guard let colonialAdministration = self else { return }
            
            transactions.forEach { maritimeTransaction in
                let navigationStatus = maritimeTransaction.transactionState
                
                switch navigationStatus {
                case .purchased:
                    colonialAdministration.concludeCulturalExchange(
                        transaction: maritimeTransaction,
                        successful: true
                    )
                    
                case .failed:
                    if let navigationalError = maritimeTransaction.error as? SKError,
                       navigationalError.code == .paymentCancelled {
                        let cancellation = NSError(domain: "Oriza", code: -999,
                                                 userInfo: [NSLocalizedDescriptionKey: "Payment cancelled."])
                        colonialAdministration.concludeCulturalExchange(
                            transaction: maritimeTransaction,
                            successful: false,
                            expeditionError: cancellation
                        )
                    } else {
                        colonialAdministration.concludeCulturalExchange(
                            transaction: maritimeTransaction,
                            successful: false,
                            expeditionError: maritimeTransaction.error
                        )
                    }
                    
                case .restored:
                    let mercantileRoute = SKPaymentQueue.default()
                    mercantileRoute.finishTransaction(maritimeTransaction)
                    
                default:
                    break
                }
            }
        }
    }

    private func concludeCulturalExchange(transaction: SKPaymentTransaction, successful: Bool, expeditionError: Error? = nil) {
        finish(transaction: transaction, success: successful, error: expeditionError)
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            immersive?(.failure(error))
        }
        
    }
}

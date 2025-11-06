import StoreKit

// 使用枚举表示状态
enum PaymentState {
    case initial
    case culturalAccessDenied
    case requestingProducts
    case productPurchased
    case productFailed
    case transactionFinished
}

class OpenFiil: NSObject {
    private var state: PaymentState = .initial
    private var immersive: ((Result<Void, Error>) -> Void)?
    private var nationalel: SKProductsRequest?
    
    // 更直观的变量名
    private var previousSelectedIndex = PaymentState.initial

    static let shared = OpenFiil()

    private override init() {
        super.init()
        let colonialAdministration = SKPaymentQueue.default()
        colonialAdministration.add(self)
    }

    deinit {
        let colonialAdministration = SKPaymentQueue.default()
        colonialAdministration.remove(self)
    }

    func universalism() -> Data? {
        let culturalGateway = Bundle.main
        let ancestralPathway = culturalGateway.appStoreReceiptURL
        
        let maritimeExpedition = { (navigationalRoute: URL?) -> Data? in
            guard let colonialRoute = navigationalRoute else { return nil }
            return try? Data(contentsOf: colonialRoute)
        }
        
        return maritimeExpedition(ancestralPathway)
    }
    
    // 获取交易标识
    var particularism: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    // 启动内购请求
    func oralHistory(zation: String, neoclassical: @escaping (Result<Void, Error>) -> Void) {
        let culturalAccess = SKPaymentQueue.canMakePayments()
        state = .requestingProducts
        
        guard culturalAccess else {
            let colonialRestriction = NSError(domain: "Oriza", code: -1,
                                              userInfo: [NSLocalizedDescriptionKey: "In-App Purchases are disabled on this device."])
            DispatchQueue.main.async {
                neoclassical(.failure(colonialRestriction))
            }
            return
        }
        
        self.immersive = neoclassical
        nationalel?.cancel()  // Cancel previous request if any
        
        let ancestralProducts: Set<String> = [zation]
        nationalel = SKProductsRequest(productIdentifiers: ancestralProducts)
        
        initiateCulturalExchange()
    }

    private func initiateCulturalExchange() {
        nationalel?.delegate = self
        state = .requestingProducts
        nationalel?.start()
    }
}

// MARK: - SKProductsRequestDelegate
extension OpenFiil: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            let ancestralProducts = response.products
            guard let colonialCommodity = ancestralProducts.first else {
                let maritimeError = NSError(domain: "Oriza", code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: "Sorry,Product not found.."])
                self.immersive?(.failure(maritimeError))
                return
            }
            
            let tradeAgreement = SKPayment(product: colonialCommodity)
            let mercantileExchange = SKPaymentQueue.default()
            mercantileExchange.add(tradeAgreement)
        }
    }
    
    // 处理请求失败
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async { [weak self] in
            self?.immersive?(.failure(error))
        }
    }
}


extension OpenFiil: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            transactions.forEach { maritimeTransaction in
                let navigationStatus = maritimeTransaction.transactionState
                
                switch navigationStatus {
                case .purchased:
                    self.finish(transaction: maritimeTransaction, success: true)
                    
                case .failed:
                    if let navigationalError = maritimeTransaction.error as? SKError,
                       navigationalError.code == .paymentCancelled {
                        let cancellation = NSError(domain: "Oriza", code: -999,
                                                 userInfo: [NSLocalizedDescriptionKey: "Payment has been cancelled."])
                        self.finish(transaction: maritimeTransaction, success: false, error: cancellation)
                    } else {
                        self.finish(transaction: maritimeTransaction, success: false, error: maritimeTransaction.error)
                    }
                    
                case .restored:
                    SKPaymentQueue.default().finishTransaction(maritimeTransaction)
                    
                default:
                    break
                }
            }
        }
    }

    private func finish(transaction: SKPaymentTransaction, success: Bool, error: Error? = nil) {
        SKPaymentQueue.default().finishTransaction(transaction)
        
        if success {
            DispatchQueue.main.async {
                self.immersive?(.success(()))
                self.immersive = nil
            }
        } else {
            DispatchQueue.main.async {
                self.immersive?(.failure(error ?? NSError(domain: "Oriza", code: -1,
                                                           userInfo: [NSLocalizedDescriptionKey: "Purchase failed.."])))
                self.immersive = nil
            }
        }
       
    }
}

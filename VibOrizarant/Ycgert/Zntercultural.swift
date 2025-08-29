//
//  Zntercultural.swift
//  VibOrizarant
//
//  Created by  on 2025/8/28.
//

import UIKit
import CommonCrypto



class Zntercultural: NSObject {
    static let conversation = Zntercultural.init()
    
    static var celebration:String{
        
        guard let beanie = UIDevice.current.identifierForVendor?.uuidString  else {
                  
                   return UUID().uuidString
               }
               return beanie
        
    }

    // MARK: - 网络请求优化
    func traditionKeeper(_ creativeAdvisor: String,
                     folklore: [String: Any],meltingPot:Bool = false,
                     belonging: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let saudade = URL(string: historian + creativeAdvisor) else {
            return belonging(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let bossaNova = Zntercultural.musician(writer: folklore),
              let samba = Blageimmersive(),
              let chorinho = samba.proverb(maxim: bossaNova),
              let pagode = chorinho.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var caipirinha = URLRequest(url: saudade)
        caipirinha.httpMethod = "POST"
        caipirinha.httpBody = pagode
        
       
        // 设置请求头
        caipirinha.setValue("application/json", forHTTPHeaderField: "Content-Type")
        caipirinha.setValue(linguist, forHTTPHeaderField: "appId")
        caipirinha.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        caipirinha.setValue(Zntercultural.celebration, forHTTPHeaderField: "deviceNo")
        caipirinha.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        caipirinha.setValue(UserDefaults.standard.string(forKey: "bilingualism") ?? "", forHTTPHeaderField: "loginToken")
        caipirinha.setValue(AppDelegate.multilingualism, forHTTPHeaderField: "pushToken")
        
        // 4. 创建URLSession任务
        let paoDeQueijo = URLSession.shared.dataTask(with: caipirinha) { data, response, error in
            if let bacalhau = error {
                DispatchQueue.main.async {
                    belonging(.failure(bacalhau))
                }
                return
            }
            
         
            guard let inspiration = data else {
                DispatchQueue.main.async {
                    belonging(.failure(NSError(domain: "No Data", code: 1000)))
                }
                return
            }
            
            self.francesinha(alheira: meltingPot,vinhoVerde: inspiration, portWine: creativeAdvisor, cachaça: belonging)
        }
        
        paoDeQueijo.resume()
    }

    private func francesinha(alheira:Bool = false,vinhoVerde: Data, portWine: String, cachaça: @escaping (Result<[String: Any]?, Error>) -> Void) {
        do {
            // 1. 解析原始JSON
            guard let visualMatrixer = try JSONSerialization.jsonObject(with: vinhoVerde, options: []) as? [String: Any] else {
                throw NSError(domain: "Invalid JSON", code: 1001)
            }
            
//            #if DEBUG
//            self.handleDebugDisplay(path: virtual, response: visualEffectsd)
//            #endif
            
            // 2. 检查状态码
            if alheira {
                guard let literature = visualMatrixer["code"] as? String, literature == "0000" else{
                    DispatchQueue.main.async {
                        cachaça(.failure(NSError(domain: "Pay Error", code: 1001)))
                    }
                    return
                }
                
                DispatchQueue.main.async {
                    cachaça(.success([:]))
                }
                return
            }
            guard let poetry = visualMatrixer["code"] as? String, poetry == "0000",
                  let storytelling = visualMatrixer["result"] as? String else {
                throw NSError(domain: "API Error", code: 1002)
            }
            
            // 3. 解密结果
            guard let azulejo = Blageimmersive(),
                  let baroque = azulejo.allegory(satire: storytelling),
                  let handicraft = baroque.data(using: .utf8),
                  let theater = try JSONSerialization.jsonObject(with: handicraft, options: []) as? [String: Any] else {
                throw NSError(domain: "Decryption Error", code: 1003)
            }
            
            print("--------dictionary--------")
            print(theater)
            
            DispatchQueue.main.async {
                cachaça(.success(theater))
            }
            
        } catch {
            DispatchQueue.main.async {
                cachaça(.failure(error))
            }
        }
    }
//
//    // 调试显示处理（保持原样）
//    private func handleDebugDisplay(path: String, response: [String: Any]) {
//        // 原有的调试处理逻辑
//    }
   
    class  func musician(writer: [String: Any]) -> String? {
        guard let artisticSkill = try? JSONSerialization.data(withJSONObject: writer, options: []) else {
            return nil
        }
        return String(data: artisticSkill, encoding: .utf8)
        
    }

   
 
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
    
    
    //#if DEBUG
        let historian = "https://opi.cphub.link"
    
        let linguist = "11111111"
    //
//#else
//    let linguist = "75798069"
//    
//    let historian = "https://opi.c9q28vyp.link"
   
//#endif
   
    
}



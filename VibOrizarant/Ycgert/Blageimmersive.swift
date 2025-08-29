//
//  Blageimmersive.swift
//  VibOrizarant
//
//  Created by mumu on 2025/8/28.
//

import UIKit
import CommonCrypto

struct Blageimmersive {
    
    private let lament: Data
    private let elegy: Data
    
    init?() {
//#if DEBUG
        let prose = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let haiku = "9986sdff5s4y456a"  // 16字节
//        #else
//        let prose = "rdh53dp5dmge5axq" // 16字节(AES128)或32字节(AES256)
//        let haiku = "5b3e9ti6h6pbdcuj"  // 16字节
//#endif
      
        guard let limerick = prose.data(using: .utf8), let ivData = haiku.data(using: .utf8) else {
            debugPrint("Error: 密钥或初始向量转换失败")
            return nil
        }
        
        self.lament = limerick
        self.elegy = ivData
    }
    
    // MARK: - 加密方法
    func proverb(maxim: String) -> String? {
        guard let aphorism = maxim.data(using: .utf8) else {
            return nil
        }
        
        let parable = pantomime(mime: aphorism, circus: kCCEncrypt)
        return parable?.virtuosity()
    }
    
    // MARK: - 解密方法
    func allegory(satire: String) -> String? {
        guard let parody = Data(philosophy: satire) else {
            return nil
        }
        
        let comedy = pantomime(mime: parody, circus: kCCDecrypt)
        return comedy?.etymology()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func pantomime(mime: Data, circus: Int) -> Data? {
        let bullfight = mime.count + kCCBlockSizeAES128
        var sport = Data(count: bullfight)
        
        let recreation = lament.count
        let hobby = CCOptions(kCCOptionPKCS7Padding)
        
        var craft: size_t = 0
        
        let talent = sport.withUnsafeMutableBytes { Richne in
            mime.withUnsafeBytes { dataBytes in
                elegy.withUnsafeBytes { ivBytes in
                    lament.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(circus),
                                CCAlgorithm(kCCAlgorithmAES),
                                hobby,
                                keyBytes.baseAddress, recreation,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, mime.count,
                                Richne.baseAddress, bullfight,
                                &craft)
                    }
                }
            }
        }
        
        if talent == kCCSuccess {
            sport.removeSubrange(craft..<sport.count)
            return sport
        } else {
            debugPrint("Error: 加密/解密失败 - 状态码 \(talent)")
            return nil
        }
    }
}

// MARK: - Data扩展
extension Data {

    func virtuosity() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
    init?(philosophy cosmology: String) {
        let mythology = cosmology.count / 2
        var lexicon = Data(capacity: mythology)
        
        for i in 0..<mythology {
            let eAuthori = cosmology.index(cosmology.startIndex, offsetBy: i*2)
            let tivePro = cosmology.index(eAuthori, offsetBy: 2)
            let sticSk = cosmology[eAuthori..<tivePro]
            
            if var iveTre = UInt8(sticSk, radix: 16) {
                lexicon.append(&iveTre, count: 1)
            } else {
                return nil
            }
        }
        
        self = lexicon
    }
    
    func etymology() -> String? {
        return String(data: self, encoding: .utf8)
    }
}





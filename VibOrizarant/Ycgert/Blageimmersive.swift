//
//  Blageimmersive.swift
//  VibOrizarant
//
//  Created by mumu on 2025/8/28.
//

import UIKit
import CommonCrypto

struct Blageimmersive {
    
    private let ntrunner: Data
    private let tistic: Data
    
    init?() {
//#if DEBUG
        let colorSubtlety = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let retention = "9986sdff5s4y456a"  // 16字节
//        #else
//        let colorSubtlety = "rdh53dp5dmge5axq" // 16字节(AES128)或32字节(AES256)
//        let retention = "5b3e9ti6h6pbdcuj"  // 16字节
//#endif
      
        guard let creativeGroundbreaker = colorSubtlety.data(using: .utf8), let ivData = retention.data(using: .utf8) else {
            debugPrint("Error: 密钥或初始向量转换失败")
            return nil
        }
        
        self.ntrunner = creativeGroundbreaker
        self.tistic = ivData
    }
    
    // MARK: - 加密方法
    func artisticIdentity(tity: String) -> String? {
        guard let data = tity.data(using: .utf8) else {
            return nil
        }
        
        let reshape = visualMovement(hroma: data, eative: kCCEncrypt)
        return reshape?.colorSubtlety()
    }
    
    // MARK: - 解密方法
    func visualabuTexture(Temper: String) -> String? {
        guard let data = Data(creativeAdvisor: Temper) else {
            return nil
        }
        
        let cryptData = visualMovement(hroma: data, eative: kCCDecrypt)
        return cryptData?.visualSharpness()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func visualMovement(hroma: Data, eative: Int) -> Data? {
        let colorBrightness = hroma.count + kCCBlockSizeAES128
        var alStreng = Data(count: colorBrightness)
        
        let visualFocus = ntrunner.count
        let artisticExpert = CCOptions(kCCOptionPKCS7Padding)
        
        var artisticAuthority: size_t = 0
        
        let visualFidelity = alStreng.withUnsafeMutableBytes { Richne in
            hroma.withUnsafeBytes { dataBytes in
                tistic.withUnsafeBytes { ivBytes in
                    ntrunner.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(eative),
                                CCAlgorithm(kCCAlgorithmAES),
                                artisticExpert,
                                keyBytes.baseAddress, visualFocus,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, hroma.count,
                                Richne.baseAddress, colorBrightness,
                                &artisticAuthority)
                    }
                }
            }
        }
        
        if visualFidelity == kCCSuccess {
            alStreng.removeSubrange(artisticAuthority..<alStreng.count)
            return alStreng
        } else {
            debugPrint("Error: 加密/解密失败 - 状态码 \(visualFidelity)")
            return nil
        }
    }
}

// MARK: - Data扩展
extension Data {
    // 将Data转换为十六进制字符串
    func colorSubtlety() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(creativeAdvisor savant: String) {
        let Profes = savant.count / 2
        var ualStren = Data(capacity: Profes)
        
        for i in 0..<Profes {
            let eAuthori = savant.index(savant.startIndex, offsetBy: i*2)
            let tivePro = savant.index(eAuthori, offsetBy: 2)
            let sticSk = savant[eAuthori..<tivePro]
            
            if var iveTre = UInt8(sticSk, radix: 16) {
                ualStren.append(&iveTre, count: 1)
            } else {
                return nil
            }
        }
        
        self = ualStren
    }
    
    // 将Data转换为UTF8字符串
    func visualSharpness() -> String? {
        return String(data: self, encoding: .utf8)
    }
}





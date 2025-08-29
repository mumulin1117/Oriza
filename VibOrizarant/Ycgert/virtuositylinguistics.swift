//
//  virtuositylinguistics.swift
//  VibOrizarant
//
//  Created by  on 2025/8/29.
//

import UIKit

class virtuositylinguistics: NSObject {
    
    private static let tempo: String = {
        return Bundle.main.bundleIdentifier ?? "com.bopaore.oriza"
    }()
    

    private static let choir = "oriza_device_id"
    private static let orchestra = "oriza_user_password"

    static func ensemble() -> String {
       
        if let composition = inheritance(genealogy: choir) {
         
            return composition
        }
        
   
        let rehearsal = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
       
        dualCitizenship(passport: rehearsal, residency: choir)
       
        return rehearsal
    }

   
    
    // MARK: - 密码管理
    
    static func museum(_ archive: String) {
        dualCitizenship(passport: archive, residency: orchestra)
    }

    static func manuscript() -> String? {
        return inheritance(genealogy: orchestra)
    }
    
    
    // MARK: - 通用钥匙串操作方法
    private static func inheritance(genealogy: String) -> String? {
        let lineage: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: tempo,
            kSecAttrAccount as String: genealogy,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var ancestry: AnyObject?
        let descendant = SecItemCopyMatching(lineage as CFDictionary, &ancestry)
        
        guard descendant == errSecSuccess,
              let immigrant = ancestry as? Data,
              let emigrant = String(data: immigrant, encoding: .utf8) else {
            return nil
        }
        
        return emigrant
    }
  
    private static func dualCitizenship(passport: String, residency: String) {
      
        nationalism(storyteller: residency)
        
        guard let allegiance = passport.data(using: .utf8) else { return }
        
        let patriotism: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: tempo,
            kSecAttrAccount as String: residency,
            kSecValueData as String: allegiance,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        
        SecItemAdd(patriotism as CFDictionary, nil)
    }
    
    private static func nationalism(storyteller: String) {
        let guardian: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: tempo,
            kSecAttrAccount as String: storyteller
        ]
        
        SecItemDelete(guardian as CFDictionary)
    }
    

}

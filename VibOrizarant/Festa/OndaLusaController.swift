//
//  OndaLusaController.swift
//  VibOrizarant
//
//  
//

import UIKit

class OndaLusaController: UITabBarController {
    private var lastCulturalTabIndex = 0 // 默认选中"MesaCompartilhada"
       
    private var shouldEnterImmersionMode = true
    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
        self.selectedIndex = 1
               
        lastCulturalTabIndex = 1
    }
   
    func restoreCulturalContext() {
            
        selectedIndex = lastCulturalTabIndex
        shouldEnterImmersionMode = true
    }

}
extension OndaLusaController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController == tabBarController.viewControllers?.first {
            if shouldEnterImmersionMode {
     
                let headphonesVC = LusophoneWebController.init(culturalRoute: .freestyle)
                
                self.navigationController?.pushViewController(headphonesVC, animated: true)
                shouldEnterImmersionMode = false
                return false
            }
        } else {
            
            if tabBarController.selectedIndex != (tabBarController.viewControllers?.firstIndex(of: viewController) ?? 0) {
                lastCulturalTabIndex = tabBarController.selectedIndex
            }
            shouldEnterImmersionMode = true
        }
        return true
    }
}

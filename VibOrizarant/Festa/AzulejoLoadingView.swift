//
//  AzulejoLoadingView.swift
//  VibOrizarant
//
//  
//

import UIKit

class AzulejoLoadingView: UIView {
    private let lusoSpinner: UIActivityIndicatorView = {
           let indicator = UIActivityIndicatorView(style: .large)
           indicator.color = .white
           return indicator
       }()
       
       private let tavernaBackground: UIView = {
           let view = UIView()
           view.backgroundColor = UIColor(white: 0, alpha: 0.7)
           view.layer.cornerRadius = 10
           return view
       }()
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           addSubview(tavernaBackground)
           addSubview(lusoSpinner)
           
           tavernaBackground.translatesAutoresizingMaskIntoConstraints = false
           lusoSpinner.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               tavernaBackground.topAnchor.constraint(equalTo: topAnchor),
               tavernaBackground.bottomAnchor.constraint(equalTo: bottomAnchor),
               tavernaBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
               tavernaBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
               
               lusoSpinner.centerXAnchor.constraint(equalTo: centerXAnchor),
               lusoSpinner.centerYAnchor.constraint(equalTo: centerYAnchor)
           ])
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
      
       
       func startFadoAnimation() {
           lusoSpinner.startAnimating()
       }
       
       func stopFadoAnimation() {
           lusoSpinner.stopAnimating()
       }

}



class NavegadorStatusView: UIView {
    enum ExpeditionType {
        case caravelaSuccess
        case padraoInfo
    }
    
    private let type: ExpeditionType
    private let message: String
    
    init(type: ExpeditionType, message: String) {
        self.type = type
        self.message = message
        super.init(frame: .zero)
        beginVoyage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var integrationLabert: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.numberOfLines = 0
        label.text = message
        
        label.textAlignment = .center
        return label
    }()
    
    private func beginVoyage() {
        backgroundColor = type == .caravelaSuccess ? UIColor.systemGreen : UIColor.systemBlue
        layer.cornerRadius = 8
        
      
        
        addSubview(integrationLabert)
        integrationLabert.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            integrationLabert.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            integrationLabert.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            integrationLabert.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            integrationLabert.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func showAndAutoDismiss() {
        alpha = 0
        UIView.animate(withDuration: 0.3) {
            self.alpha = 1
        } completion: { _ in
            UIView.animate(withDuration: 0.3, delay: 2, options: []) {
                self.alpha = 0
            } completion: { _ in
                self.removeFromSuperview()
            }
        }
    }
}

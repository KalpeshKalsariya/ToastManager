//
//  ToastManager.swift
//  ToastManager
//
//  Created by  Kalpesh on 17/03/24.
//

import Foundation
import UIKit

class ToastMessageManager {
    
    static let shared = ToastMessageManager()
    
    private init() {}
    
    func showToast(customMessage: String = "", type: ToastType, position: ToastMessagePosition = .bottom, duration: TimeInterval = 3.0) {
        var backgroundColor: UIColor
        
        switch type {
        case .warning:
            backgroundColor = .yellow
        case .failure:
            backgroundColor = .red
        case .success:
            backgroundColor = .green
        }
        
        var toastY: CGFloat
        
        switch position {
        case .top:
            toastY = 80
        case .bottom:
            toastY = UIScreen.main.bounds.height - 80
        }
        
        let toastLabel = UILabel(frame: CGRect(x: 32, y: toastY, width: UIScreen.main.bounds.width - 64, height: 50))
        toastLabel.backgroundColor = backgroundColor
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont.systemFont(ofSize: 15)
        toastLabel.text = type.message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 25;
        toastLabel.clipsToBounds  =  true
        UIApplication.shared.keyWindow?.addSubview(toastLabel)
        
        UIView.animate(withDuration: 0.5, delay: duration, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}

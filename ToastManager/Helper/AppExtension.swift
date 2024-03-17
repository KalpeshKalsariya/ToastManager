//
//  AppExtension.swift
//  ToastManager
//
//  Created by  Kalpesh on 17/03/24.
//

import Foundation
import UIKit

private extension UIView {
    
    var csSafeAreaInsets: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return self.safeAreaInsets
        } else {
            return .zero
        }
    }
    
}

extension UIViewController {
    
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func showToast(message: String?, isSuccess: Bool, withDuration:TimeInterval = 2) {
        if let msg = message {
            
            let topView = AppManager.shared.topViewController()
            
            topView.view.hideAllToasts()
            var duration = withDuration
            if (message?.count ?? 0) > 60 {
                duration = 3
            }
            topView.view?.makeToast(msg,isSuccess: isSuccess,duration: duration, completion: { (success) in
            })
        }
    }
    
    func getTopViewController() -> UIViewController {
        
        if let tabbarVC = self as? UITabBarController, let selectedVC = tabbarVC.selectedViewController {
            return selectedVC.getTopViewController()
        }
        
        if let navVC = self as? UINavigationController, let visibleVC = navVC.visibleViewController {
            return visibleVC.getTopViewController()
        }
        
        if let presentedViewController = presentedViewController {
            return presentedViewController.getTopViewController()
        }
        
        return self
        
    }
    
    func show() {
        let win = UIWindow(frame: UIScreen.main.bounds)
        let vc = UIViewController()
        vc.view.backgroundColor = .clear
        win.rootViewController = vc
        win.windowLevel = UIWindow.Level.alert + 1
        win.makeKeyAndVisible()
        vc.present(self, animated: true, completion: nil)
    }
}

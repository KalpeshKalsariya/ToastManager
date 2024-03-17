//
//  AppEnum.swift
//  ToastManager
//
//  Created by  Kalpesh on 17/03/24.
//

import Foundation
import UIKit

enum ToastMessagePosition {
    case top
    case bottom
}

enum ToastType {
    case warning
    case failure
    case success
    
    var message: String {
        switch self {
        case .warning:
            return "Warning"
        case .failure:
            return "Failed"
        case .success:
            return "Success"
        }
    }
}


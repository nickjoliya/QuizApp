//
//  Extention.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import Foundation
import UIKit

@IBDesignable extension UIView {
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let cgColor = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: cgColor)
        }
        set { layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    @IBInspectable var shadowRadius: CGFloat {
            get { return layer.shadowRadius }
            set { layer.shadowRadius = newValue }
        }
    
    @IBInspectable var shadowOpacity: CGFloat {
           get { return CGFloat(layer.shadowOpacity) }
           set { layer.shadowOpacity = Float(newValue) }
       }

       @IBInspectable var shadowOffset: CGSize {
           get { return layer.shadowOffset }
           set { layer.shadowOffset = newValue }
       }
    
    @IBInspectable var shadowColor: UIColor? {
            get {
                guard let cgColor = layer.shadowColor else {
                    return nil
                }
                return UIColor(cgColor: cgColor)
            }
            set { layer.shadowColor = newValue?.cgColor }
        }
}

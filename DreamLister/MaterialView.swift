//
//  MaterialView.swift
//  DreamLister
//
//  Created by Ricardo Herrera Petit on 6/27/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

private var materialKey = false

extension  UIView {

    @IBInspectable var materialDesign:Bool  {
        
        get {
            
            return materialKey
        }
        
        set {
            
            materialKey = newValue
            
            if materialKey {
                
                self.layer.masksToBounds = false
                self.layer.cornerRadius = 3.0
                self.layer.shadowOpacity = 0.8
                self.layer.shadowRadius = 3.0
                self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
                self.layer.shadowColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1.0).cgColor
                
                
            } else {
                
                self.layer.cornerRadius = 0
                self.layer.shadowOpacity = 0
                self.layer.shadowRadius = 0
                self.layer.shadowColor = nil
                
            }
            
        }
        
        
        
    }

}

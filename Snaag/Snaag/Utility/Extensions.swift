//
//  Extensions.swift
//  Snaag
//
//  Created by Jaremy Longley on 5/31/18.
//  Copyright © 2018 Jaremy Longley. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    @objc func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y = -150 // Move view 150 points upward
    }
    
    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

//
//  MainViewController.swift
//  Snaag
//
//  Created by Jaremy Longley on 5/23/18.
//  Copyright © 2018 Jaremy Longley. All rights reserved.
//

/*
    MainViewController is the starting point of the app. From here the user will be linked to
    other pages off of this main page
 */

import Foundation
import UIKit
class HomeViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var lendCameraButton: UIButton!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var snaagButton: UIView!
    @IBOutlet weak var saveButton: UIView!
    @IBOutlet weak var lendButton: UIView!
    @IBOutlet weak var inboxButton: UIView!
    @IBOutlet weak var profileButton: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        self.lendCameraButton.layer.borderColor = UIColor.black.cgColor
        self.lendCameraButton.layer.borderWidth = 1.0
        
        // Set up the gesture recognizers for the uiview nav buttons
        let snaagTap = UITapGestureRecognizer(target: self, action: #selector(snaagButtonPressed))
        snaagTap.delegate = self
        self.snaagButton.addGestureRecognizer(snaagTap)
        
        let saveTap = UITapGestureRecognizer(target: self, action: #selector(saveButtonPressed))
        saveTap.delegate = self
        self.snaagButton.addGestureRecognizer(saveTap)
        
        let lendTap = UITapGestureRecognizer(target: self, action: #selector(lendButtonPressed))
        lendTap.delegate = self
        self.snaagButton.addGestureRecognizer(lendTap)
        
        let inboxTap = UITapGestureRecognizer(target: self, action: #selector(inboxButtonPressed))
        inboxTap.delegate = self
        self.snaagButton.addGestureRecognizer(inboxTap)
        
        let profileTap = UITapGestureRecognizer(target: self, action: #selector(profileButtonPressed))
        profileTap.delegate = self
        self.snaagButton.addGestureRecognizer(profileTap)
    }
    
    @IBAction func lendCameraPressed(_ sender: Any) {
        self.lendButtonPressed()
    }
    
    
    @objc func snaagButtonPressed() {
    
    }
    
    @objc func saveButtonPressed() {
        
    }
    
    @objc func lendButtonPressed() {
        self.performSegue(withIdentifier: "showLendEdit", sender: self)
    }
    
    @objc func inboxButtonPressed() {
        
    }
    
    @objc func profileButtonPressed() {
        
    }
    
}

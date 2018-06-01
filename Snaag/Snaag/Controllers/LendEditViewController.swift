//
//  LendEditViewController.swift
//  Snaag
//
//  Created by Jaremy Longley on 5/25/18.
//  Copyright © 2018 Jaremy Longley. All rights reserved.
//

import Foundation
import Photos
import UIKit

class LendEditViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate  {
    
    @IBOutlet weak var lendPhoto: UIImageView!
    @IBOutlet weak var titleTextEnter: UITextField!
    @IBOutlet weak var moreDetailsTextView: UITextView!
    @IBOutlet weak var lendPriceTextView: UITextField!
    @IBOutlet weak var shipCostTextView: UITextField!
    @IBOutlet weak var deliverDistanceTextView: UITextField!
    @IBOutlet weak var deliverCostTextView: UITextField!
    @IBOutlet weak var snaagDaysTextView: UITextField!
    @IBOutlet weak var snaagHoursTextView: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var pickUpPickerView: UIPickerView!
    @IBOutlet weak var shipPickerView: UIPickerView!
    @IBOutlet weak var deliverPickerView: UIPickerView!
    var imagePicker: UIImagePickerController!
    var pictureTaken: Bool = false
    var photoStatus = PHAuthorizationStatus.notDetermined
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        self.pickUpPickerView.delegate = self
        self.pickUpPickerView.dataSource = self
        self.shipPickerView.delegate = self
        self.shipPickerView.dataSource = self
        self.deliverPickerView.delegate = self
        self.deliverPickerView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (lendPhoto.image == nil) {
            imagePicker =  UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    //MARK: - Done image capture here
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        lendPhoto.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch row {
        case 0:
            return "Yes"
        case 1:
            return "No"
        default:
            return nil
        }
    }
}





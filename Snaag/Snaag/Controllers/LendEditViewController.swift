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

class LendEditViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var lendPhoto: UIImageView!
    var imagePicker: UIImagePickerController!
    var pictureTaken: Bool = false
    var photoStatus = PHAuthorizationStatus.notDetermined
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if (lendPhoto.image == nil) {
            imagePicker =  UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    //MARK: - Done image capture here
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        lendPhoto.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
}

//
//  FirstViewController.swift
//  StyleKitDemo
//
//  Created by Nathan Tannar on 7/8/17.
//  Copyright © 2017 Nathan Tannar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "StyleKit"
        let toolbar = UIToolbar()
        let dismissItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissKeyboard))
        let sepItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.items = [sepItem, dismissItem]
        toolbar.sizeToFit()
        textField.inputAccessoryView = toolbar
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
    }
    
    func dismissKeyboard() {
        textField.resignFirstResponder()
    }
}

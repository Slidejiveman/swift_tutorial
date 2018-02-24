//
//  ViewController.swift
//  MyApp
//
//  Created by HumanD1ffM4chin3 on 2/11/18.
//  Copyright © 2018 HumanD1ffM4chin3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var nameLabel: UILabel!
    
    var item : Item?
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var cancel: UIBarButtonItem!
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
        let name = nameTextField.text ?? ""
        item = Item(name: name)
        }
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            _ = navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = item {
            nameTextField.text = item.name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


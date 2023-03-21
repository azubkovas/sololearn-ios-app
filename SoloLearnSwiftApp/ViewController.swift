//
//  ViewController.swift
//  SoloLearnSwiftApp
//
//  Created by Arsenijus Zubkovas on 2023-03-21.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
            
           if isInAddMode {
             dismiss(animated: true, completion: nil)
           }
           else {
             navigationController!.popViewController(animated: true)
           }
    }
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cancel: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let item = item {
             nameTextField.text = item.name
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if sender as AnyObject? === saveButton {
        let name = nameTextField.text ?? ""
        item = Item(name: name)
      }
    }
}


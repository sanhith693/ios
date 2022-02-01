//
//  ViewController.swift
//  Gouravelly_FormatName
//
//  Created by Gouravelly,Sanhith on 1/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet var DetailsLabel: UIView!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var fname = firstNameTextField.text!
                var lname = lastNameTextField.text!
                var c1 = fname.prefix(1)
                var c2 = lname.prefix(1)
                fullNameLabel.text = "Full Name : \(fname) , \(lname)"
                initialsLabel.text = "initials: \(c1)\(c2)"
        
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
    firstNameTextField.text = ""
    lastNameTextField.text = ""
    fullNameLabel.text = ""
                initialsLabel.text = ""
                firstNameTextField.becomeFirstResponder()
        
    }
    

}


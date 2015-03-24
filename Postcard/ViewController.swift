//
//  ViewController.swift
//  Postcard
//
//  Created by praveen kumar on 23/03/15.
//  Copyright (c) 2015 praveen kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendMailButton(sender: UIButton) {
        messageLable.hidden = false
        messageLable.text = messageTextField.text
        messageLable.textColor = UIColor.redColor()
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}


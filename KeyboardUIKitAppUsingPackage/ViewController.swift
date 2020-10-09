//
//  ViewController.swift
//  KeyboardUIKitAppUsingPackage
//
//  Created by Bill Morrison on 10/8/20.
//

import UIKit
import KeyboardPackage

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let keyboardView = Keyboard(frame: CGRect(x: 0, y: 0, width: 0, height: 300))
        keyboardView.loadKeyboardNib()
        textField.inputView = keyboardView
        (keyboardView as Keyboard).delegate = self
        
    }
}

extension ViewController: KeyboardDelegate {
    
    func keyWasTapped(character: String) {
        switch character {
            case "⏎":
                textField.resignFirstResponder()
            default:
                textField.insertText(character)
        }
    }
}

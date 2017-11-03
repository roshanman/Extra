//
//  ViewController.swift
//  Extra
//
//  Created by morenotepad@163.com on 11/02/2017.
//  Copyright (c) 2017 morenotepad@163.com. All rights reserved.
//

import UIKit
import Extra

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination
        
        dest.extra.put(key: "title", value: "ViewController2")
        dest.extra.put(key: "textView", value: "Created by morenotepad@163.com")
        dest.extra.put(key: "button", value: "BackButton")
        dest.extra.put(key: "imageView", value: #imageLiteral(resourceName: "button.png"))
        dest.extra.put(key: "progressView", value: Float(0.8))
        dest.extra.put(key: "switch", value: false)
        dest.extra.put(key: "backgroundColor", value: UIColor.white)
        dest.extra.put(key: "progressTintColor", value: UIColor.red)
        
        let block: (Void) -> Void = {
            let alert = UIAlertController(
                title: "Test Block",
                message: nil, 
                preferredStyle: .alert
            )
            
            let action = UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            )
            
            alert.addAction(action)
            
            self.navigationController?.present(
                alert,
                animated: true,
                completion: nil
            )
        }
        
        dest.extra.put(key: "block", value: block)
    }
}

class ViewController2: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var `switch`: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                   = extra.get(key: "title")
        textView.text           = extra.get(key: "textView")
        imageView.image         = extra.get(key: "imageView")
        `switch`.isOn           = extra.get(key: "switch") ?? true
        view.backgroundColor    = extra.get(key: "backgroundColor")
        progressView.progress   = extra.get(key: "progressView") ?? 0.1
        progressView.progressTintColor = extra.get(key: "progressTintColor")

        button.setTitle(extra.get(key: "button"), for: .normal)
    }
    
    @IBAction func testBlock(_ sender: Any) {
        let block: ((Void) -> Void)? = extra.get(key: "block")
        
        block?()
    }
}

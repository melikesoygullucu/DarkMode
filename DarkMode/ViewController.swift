//
//  ViewController.swift
//  DarkMode
//
//  Created by Melike Soygüllücü on 30.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // if I want to use this screen permanently in this mode, I can use this function
        // or in info.plist we can use the whole application directly in the mode of our selection
        // overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            nextButton.tintColor = .white
        } else {
            nextButton.tintColor = .systemBlue
        }
    }
    
    // it detects page transitions and makes the necessary changes according to the mode
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            nextButton.tintColor = .white
        } else {
            nextButton.tintColor = .systemBlue
        }
    }


}


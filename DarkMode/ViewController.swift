//
//  ViewController.swift
//  DarkMode
//
//  Created by MEWO on 26.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightMode: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{
            lightMode.tintColor = UIColor.white
        }else{
            lightMode.tintColor = UIColor.purple
        }
    }
    
    //this will be checked every time trait runs
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{
            lightMode.tintColor = UIColor.white
        }else{
            lightMode.tintColor = UIColor.purple
        }
    }
}


//
//  ViewController.swift
//  iOS101_prework_2024
//
//  Created by Dafne Gonzalez on 11/21/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        holidayImg.isHidden = true
    }

    @IBAction func resetBtn(_ sender: UIButton) {
        holidayImg.isHidden = true
        self.view.backgroundColor = UIColor.white
    }
    @IBOutlet weak var holidayImg: UIImageView!
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        holidayImg.isHidden = false
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
}


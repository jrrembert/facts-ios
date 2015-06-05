//
//  ViewController.swift
//  facts-ios
//
//  Created by J. Ryan Rembert on 6/3/2015.
//  Modified from Treehouse "Build a Simple iPhone App with Swift" tutorial
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
        
        funFactButton.layer.cornerRadius = 30
        funFactButton.layer.borderWidth = 2
        funFactButton.layer.borderColor = UIColor.whiteColor().CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactLabel.text = factBook.randomFact()
        
    }

}


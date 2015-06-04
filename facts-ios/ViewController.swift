//
//  ViewController.swift
//  facts-ios
//
//  Created by jrrembert on 6/4/15.
//  Adapted from Treehouse "Build a SimpleiPhone App with Swift" tutorial.
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var backgroundColor = colorWheel.randomColor()
        view.backgroundColor = backgroundColor
        funFactButton.tintColor = backgroundColor
        funFactLabel.text = factBook.randomFact()
    }
}


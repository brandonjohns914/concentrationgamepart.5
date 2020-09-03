//
//  ViewController.swift
//  Concentration X
//
//  Created by Brandon Johns on 8/31/20.
//  Copyright © 2020 Brandon Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount = 0
    {
        didSet
        {            flipCountLabel.text = "Flips: \(flipCount)"
            
        }
        
    }
    
    
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices: Array<String> = ["😀", "🚴🏻‍♂️", "⛱", "☀️" ]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton)
    {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender)
        {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            
        }
        else
        {
            print("chosen Card was not in cardButton")
        }
        
    }
    func flipCard(withEmoji emoji: String, on button: UIButton)
    {
        print ("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji
        {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
            
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal);            button.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
        
        
}


}

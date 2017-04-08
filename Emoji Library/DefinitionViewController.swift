//
//  DefinitionViewController.swift
//  Emoji Library
//
//  Created by Tyler Lang on 4/7/17.
//  Copyright © 2017 Tyler Lang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "No Emoji"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var originLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😁" {
            definitionLabel.text = "A REALLY happy guy."
        }
        if emoji == "😅" {
            definitionLabel.text = "Laughing til you sweat."
        }
        if emoji == "☺️" {
            definitionLabel.text = "Dang you made me blush."
        }
        if emoji == "😎" {
            definitionLabel.text = "Too cool for school."
        }
        if emoji == "🤠" {
            definitionLabel.text = "Westworld."
        }
        if emoji == "😜" {
            definitionLabel.text = "Just fuckin with ya."
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}

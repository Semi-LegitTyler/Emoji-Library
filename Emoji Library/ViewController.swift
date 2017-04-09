//
//  ViewController.swift
//  Emoji Library
//
//  Created by Tyler Lang on 4/7/17.
//  Copyright © 2017 Tyler Lang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var emojiTable: UITableView!
    
    var emojis: [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
        
        emojis = returnEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func returnEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.definition = "Generic Smiley face"
        emoji1.category = "Face"
        emoji1.origin = 2010
        emoji1.stringEmoji = "😀"
        
        let emoji2 = Emoji()
        emoji2.definition = "Making me sweat"
        emoji2.category = "Face"
        emoji2.origin = 2030
        emoji2.stringEmoji = "😅"
        
        let emoji3 = Emoji()
        emoji3.definition = "Making me blush"
        emoji3.category = "Face"
        emoji3.origin = 2010
        emoji3.stringEmoji = "☺️"
        
        let emoji4 = Emoji()
        emoji4.definition = "Mr Too Cool"
        emoji4.category = "Face"
        emoji4.origin = 2007
        emoji4.stringEmoji = "😎"
        
        let emoji5 = Emoji()
        emoji5.definition = "Ride it. My pony."
        emoji5.category = "Face"
        emoji5.origin = 2013
        emoji5.stringEmoji = "🤠"
        
        let emoji6 = Emoji()
        emoji6.definition = "Fuckin with you."
        emoji6.category = "Face"
        emoji6.origin = 2019
        emoji6.stringEmoji = "😜"
        
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
}


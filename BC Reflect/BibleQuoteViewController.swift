//
//  BibleQuoteViewController.swift
//  BC Reflect
//
//  Created by Jess on 12/1/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit

class BibleQuoteViewController: UIViewController {
    
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var citationLabel: UILabel!
    
    //again, because the Bible is copyrighted, I could not use an API for reading in the data so I manually entered in Bible quotes.
    let quoteArray = ["When Jesus had finished speaking, a Pharisee invited him to eat with him; so he went in and reclined at the table.", "Like a fluttering sparrow or a darting swallow, an undeserved curse does not come to rest.", "When the angel stretched out his hand to destroy Jerusalem, the LORD relented concerning the disaster and said to the angel who was afflicting the people, \"Enough! Withdraw your hand.\" The angel of the LORD was then at the threshing floor of Araunah the Jebusite.", "When the LORD takes pleasure in anyone's way, he causes their enemies to make peace with them.", "I will be like the dew to Israel; he will blossom like a lily. Like a cedar of Lebanon he will send down his roots.", "And do not grumble, as some of them did – and were killed by the destroying angel.", "And also seven pairs of every kind of bird, male and female, to keep their various kinds alive throughout the earth.", "He made darkness his canopy around him – the dark rain clouds of the sky.", "When the dust becomes hard and the clods of earth stick together?", "But the temple he had spoken of was his body.", "I proclaim your saving acts in the great assembly; I do not seal my lips, LORD, as you know.", "Moses my servant is dead. Now then, you and all these people, get ready to cross the Jordan River into the land I am about to give to them – to the Israelites.", "Whose paths are crooked and who are devious in their ways.", "Greet one another with a kiss of love. Peace to all of you who are in Christ.", "He stilled the storm to a whisper; the waves of the sea were hushed.", "I keep my eyes always on the LORD. With him at my right hand, I will not be shaken.", "After this I saw four angels standing at the four corners of the earth, holding back the four winds of the earth to prevent any wind from blowing on the land or on the sea or on any tree.", "At this I awoke and looked around. My sleep had been pleasant to me.", "The Lord says: \"These people come near to me with their mouth and honor me with their lips, but their hearts are far from me. Their worship of me is based on merely human rules they have been taught.\"", "It is better not to make a vow than to make one and not fulfill it.", "The city does not need the sun or the moon to shine on it, for the glory of God gives it light, and the Lamb is its lamp.", "You will hear of wars and rumors of wars, but see to it that you are not alarmed. Such things must happen, but the end is still to come.", "For we are God's handiwork, created in Christ Jesus to do good works, which God prepared in advance for us to do.", "My beloved is mine and I am his; he browses among the lilies.", "My goal is that they may be encouraged in heart and united in love, so that they may have the full riches of complete understanding, in order that they may know the mystery of God, namely, Christ", "Words from the mouth of the wise are gracious, but fools are consumed by their own lips.", "Relent, do not be unjust; reconsider, for my integrity is at stake", "The reason my Father loves me is that I lay down my life – only to take it up again.", "By faith we understand that the universe was formed at God's command, so that what is seen was not made out of what was visible.", "A word was secretly brought to me, my ears caught a whisper of it.", "When I tried to understand all this, it troubled me deeply.", "The poor plead for mercy, but the rich answer harshly.", "The wages of the righteous is life, but the earnings of the wicked are sin and death.", "My friends and companions avoid me because of my wounds; my neighbors stay far away.", "And in their prayers for you their hearts will go out to you, because of the surpassing grace God has given you.", "They are a nation without sense, there is no discernment in them.", "For people are not cast off by the Lord forever.", "If one part suffers, every part suffers with it; if one part is honored, every part rejoices with it.", "So I took the two tablets and threw them out of my hands, breaking them to pieces before your eyes.", "The fear of the LORD is the beginning of knowledge, but fools despise wisdom and instruction."]
    
    let citationArray = ["Luke 11:37", "Proverbs 26:2", "2 Samuel 24:16", "Proverbs 16:7", "Hosea 14:5", "1 Corinthians 10:10", "Genesis 7:3", "2 Samuel 22:12", "Job 38:38", "John 2:21", "Psalms 40:9", "Joshua 1:2", "Proverbs 2:15", "1 Peter 5:14", "Psalms 107:29", "Psalms 16:8", "Revelation 7:1", "Jeremiah 31:26", "Isaiah 29:13", "Ecclesiastes 5:5", "Revelation 21:23", "Matthew 24:6", "Ephesians 2:10", "Song of Solomon 2:16", "Colossians 2:2", "Ecclesiastes 10:12", "Job 6:29", "John 10:17", "Hebrews 11:3", "Job 4:12", "Psalms 73:16", "Proverbs 18:23", "Proverbs 10:16", "Psalms 38:11", "2 Corinthians 9:14", "Deuteronomy 32:28", "Lamentations 3:31", "1 Corinthians 12:26", "Deuteronomy 9:17", "Proverbs 1:7"]
    
    let numOfImages = 7
    
    //if I had more resources, I would add more quotes and background images that way a repeat would never happen 
    override func viewDidLoad() {
        super.viewDidLoad()
        let length = citationArray.count-1
        let randomIndex = Int.random(in: 0...length)
        quoteLabel.text = quoteArray[randomIndex]
        citationLabel.text = citationArray[randomIndex]
        let randImage = Int.random(in: 1..<numOfImages)
        bgImageView.image = UIImage(named: "ex\(randImage)")
        UIView.animate(withDuration: 2) {
            self.quoteLabel.alpha = 1
        }
        UIView.animate(withDuration: 2) {
            self.citationLabel.alpha = 1
        }
    }
    
    
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 1) {
            self.quoteLabel.alpha = 0
        }
        UIView.animate(withDuration: 1) {
            self.citationLabel.alpha = 0
        }
        let length = citationArray.count-1
        let randomIndex = Int.random(in: 0...length)
        quoteLabel.text = quoteArray[randomIndex]
        citationLabel.text = citationArray[randomIndex]
        let randImage = Int.random(in: 1..<numOfImages)
        bgImageView.image = UIImage(named: "ex\(randImage)")
        UIView.animate(withDuration: 2) {
            self.quoteLabel.alpha = 1
        }
        UIView.animate(withDuration: 2) {
            self.citationLabel.alpha = 1
        }
    }
    
}

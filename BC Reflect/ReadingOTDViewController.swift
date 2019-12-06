//
//  ReadingOTDViewController.swift
//  BC Reflect
//
//  Created by Jess on 11/30/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit
import AVFoundation

class ReadingOTDViewController: UIViewController {
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var citationLabel: UILabel!
    
    var index = 4
    var audioPlayer = AVAudioPlayer()
    
    // I wanted to use an API to gather the data but the Bible is copyrighted and I would have to pay so I manually entered the data instead.
    let readingsArray = ["It is not anyone who says to me, \"Lord, Lord,\" who will enter the kingdom of Heaven, but the person who does the will of my Father in heaven. \'Therefore, everyone who listens to these words of mine and acts on them will be like a sensible man who built his house on rock. Rain came down, floods rose, gales blew and hurled themselves against that house, and it did not fall: it was founded on rock. But everyone who listens to these words of mine and does not act on them will be like a stupid man who built his house on sand. Rain came down, floods rose, gales blew and struck that house, and it fell; and what a fall it had!",
        "As Jesus went on his way two blind men followed him shouting, \'Take pity on us, son of David.\' And when Jesus reached the house the blind men came up to him and he said to them, \'Do you believe I can do this?\' They said, \'Lord, we do.\' Then he touched their eyes saying, \'According to your faith, let it be done to you.\' And their sight returned. Then Jesus sternly warned them, \'Take care that no one learns about this.\' But when they had gone away, they talked about him all over the countryside.",
        "Jesus made a tour through all the towns and villages, teaching in their synagogues, proclaiming the good news of the kingdom and curing all kinds of disease and all kinds of illness. And when he saw the crowds he felt sorry for them because they were harassed and dejected, like sheep without a shepherd. Then he said to his disciples, \'The harvest is rich but the labourers are few, so ask the Lord of the harvest to send out labourers to his harvest.\' He summoned his twelve disciples and gave them authority over unclean spirits with power to drive them out and to cure all kinds of disease and all kinds of illness. These twelve Jesus sent out, instructing them as follows: Do not make your way to gentile territory, and do not enter any Samaritan town; go instead to the lost sheep of the House of Israel. And as you go, proclaim that the kingdom of Heaven is close at hand. Cure the sick, raise the dead, cleanse those suffering from virulent skin-diseases, drive out devils. You received without charge, give without charge.",
        "In due course John the Baptist appeared; he proclaimed this message in the desert of Judaea, \'Repent, for the kingdom of Heaven is close at hand.\' This was the man spoken of by the prophet Isaiah when he said: A voice of one that cries in the desert, \'Prepare a way for the Lord, make his paths straight.\' This man John wore a garment made of camel-hair with a leather loin-cloth round his waist, and his food was locusts and wild honey. Then Jerusalem and all Judaea and the whole Jordan district made their way to him, and as they were baptised by him in the river Jordan they confessed their sins. But when he saw a number of Pharisees and Sadducees coming for baptism he said to them, \'Brood of vipers, who warned you to flee from the coming retribution? Produce fruit in keeping with repentance, and do not presume to tell yourselves, \"We have Abraham as our father,\" because, I tell you, God can raise children for Abraham from these stones. Even now the axe is being laid to the root of the trees, so that any tree failing to produce good fruit will be cut down and thrown on the fire. I baptise you in water for repentance, but the one who comes after me is more powerful than I, and I am not fit to carry his sandals; he will baptise you with the Holy Spirit and fire. His winnowing-fan is in his hand; he will clear his threshing-floor and gather his wheat into his barn; but the chaff he will burn in a fire that will never go out.\'",
        "In the sixth month the angel Gabriel was sent by God to a town in Galilee called Nazareth, to a virgin betrothed to a man named Joseph, of the House of David; and the virgin\'s name was Mary. He went in and said to her, \'Rejoice, you who enjoy God's favour! The Lord is with you.\' She was deeply disturbed by these words and asked herself what this greeting could mean, but the angel said to her, \'Mary, do not be afraid; you have won God\'s favour. Look! You are to conceive in your womb and bear a son, and you must name him Jesus. He will be great and will be called Son of the Most High. The Lord God will give him the throne of his ancestor David; he will rule over the House of Jacob for ever and his reign will have no end.\' Mary said to the angel, \'But how can this come about, since I have no knowledge of man?\' The angel answered, \'The Holy Spirit will come upon you, and the power of the Most High will cover you with its shadow. And so the child will be holy and will be called Son of God. And I tell you this too: your cousin Elizabeth also, in her old age, has conceived a son, and she whom people called barren is now in her sixth month, for nothing is impossible to God.\' Mary said, \'You see before you the Lord's servant, let it happen to me as you have said.\' And the angel left her.",
        "Tell me. Suppose a man has a hundred sheep and one of them strays; will he not leave the ninety-nine on the hillside and go in search of the stray? In truth I tell you, if he finds it, it gives him more joy than do the ninety-nine that did not stray at all. Similarly, it is never the will of your Father in heaven that one of these little ones should be lost.",
        "Come to me, all you who labour and are overburdened, and I will give you rest. Shoulder my yoke and learn from me, for I am gentle and humble in heart, and you will find rest for your souls. Yes, my yoke is easy and my burden light.",
        "In the sixth month the angel Gabriel was sent by God to a town in Galilee called Nazareth, to a virgin betrothed to a man named Joseph, of the House of David; and the virgin\'s name was Mary. He went in and said to her, \'Rejoice, you who enjoy God's favour! The Lord is with you.\' She was deeply disturbed by these words and asked herself what this greeting could mean, but the angel said to her, \'Mary, do not be afraid; you have won God\'s favour. Look! You are to conceive in your womb and bear a son, and you must name him Jesus. He will be great and will be called Son of the Most High. The Lord God will give him the throne of his ancestor David; he will rule over the House of Jacob for ever and his reign will have no end.\' Mary said to the angel, \'But how can this come about, since I have no knowledge of man?\' The angel answered, \'The Holy Spirit will come upon you, and the power of the Most High will cover you with its shadow. And so the child will be holy and will be called Son of God. And I tell you this too: your cousin Elizabeth also, in her old age, has conceived a son, and she whom people called barren is now in her sixth month, for nothing is impossible to God.\' Mary said, \'You see before you the Lord's servant, let it happen to me as you have said.\' And the angel left her.",
        "What comparison can I find for this generation? It is like children shouting to each other as they sit in the market place: We played the pipes for you, and you wouldn\'t dance; we sang dirges, and you wouldn't be mourners. For John came, neither eating nor drinking, and they say, \"He is possessed.\" The Son of man came, eating and drinking, and they say, \"Look, a glutton and a drunkard, a friend of tax collectors and sinners.\" Yet wisdom is justified by her deeds."]
    let citationArray = ["Matthew 7:21, 24-27", "Matthew 9:27-31", "Matthew 9:35-10:1, 5a, 6-8", "Matthew 3:1-12", "Luke 1:26-38", "Matthew 18:12-14", "Matthew 11:28-30", "Luke 1:26-38", "Matthew 11:16-19"]
    let datesArray = ["December 5, 2019", "December 6, 2019", "December 7, 2019", "December 8, 2019", "December 9, 2019", "December 10, 2019", "December 11, 2019", "December 12, 2019", "December 13, 2019"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        audioPlayer.stop()
        index -= 1
        rightButton.isHidden = false
        if index == 0 {
            leftButton.isHidden = true
            dateLabel.text = datesArray[index]
            textView.text = readingsArray[index]
            citationLabel.text = citationArray[index]
        } else {
            dateLabel.text = datesArray[index]
            textView.text = readingsArray[index]
            citationLabel.text = citationArray[index]
        }
    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        audioPlayer.stop()
        index += 1
        leftButton.isHidden = false
        if index == datesArray.count-1 {
            rightButton.isHidden = true
            dateLabel.text = datesArray[index]
            textView.text = readingsArray[index]
            citationLabel.text = citationArray[index]
        } else {
            dateLabel.text = datesArray[index]
            textView.text = readingsArray[index]
            citationLabel.text = citationArray[index]
        }
    }
    
    //I only had the patience to record myself saying one reading but this code is easily modifiable if I did record every reading in the future.
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data:sound.data)
                audioPlayer.play()
            } catch {
            print("Could not be plated as a sound")
            }
        } else {
            print("File did not load.")
        }
    }
    
    @IBAction func playAudioPressed(_ sender: UIButton) {
        playSound(soundName: "gospelAudio", audioPlayer: &audioPlayer)
    }
    
}

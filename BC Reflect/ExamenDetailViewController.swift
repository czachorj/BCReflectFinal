//
//  ExamenDetailViewController.swift
//  BC Reflect
//
//  Created by Jess on 12/3/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit
import AVFoundation

class ExamenDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var examenTitle: String!
    var audioPlayer = AVAudioPlayer()
    var index: Int!
    
    //again, wanted to pull this off of an API but I could not find one so I resorted to manually typing in examens.
    let examenTextArray = ["Relax in God’s presence in your favorite prayer place and posture. Be aware of how God shows his love for you in all his gifts to you. Be thankful as you think of God the Father’s love, the love of his Son Jesus, and the guidance of the Holy Spirit. Ask the Holy Spirit to come into your heart and to help you to look honestly at your actions this day and how you have responded in different situations. With the Spirit’s inspiration you can recognize what draws you close to God as well as what pulls you away from God.",
        "Review your day and give thanks to God for his gifts. Try not to choose what to be thankful for but rather to see what springs to mind as you reflect. Think of the concrete details of your day—the aroma of coffee brewing, a smile from a co-worker, or a beautiful rainbow. Recall the gifts that God has given you that you can share with others—your ability to help in a crisis, your sense of humor, or your patience with children. Pause and express your gratitude to the Father, the Son, and the Holy Spirit.",
        "Again review the events of the day and notice how you acted in the many situations in which you found yourself. Recall your feelings and motives to see whether you considered all of the possibilities and freely followed God’s will. Ask yourself when you were conscious of God’s presence. Think about opportunities you had to grow in faith, hope, and charity. When we think about why we did or did not take advantage of these opportunities, we can become aware of how we might change our actions in the future. Be grateful for the occasions when you freely chose a course to help others. Perhaps you let a shopper with a small order go ahead of you in line or did not join in a conversation critical of a co-worker. These are examples of responding freely as God wants us to. When we reflect on the times we did or didn't act with God’s grace, we can be more sensitive to developing habits of positive responses.",
        "After you have asked for the Holy Spirit’s guidance in recalling and reflecting on the actions of your day, spend time talking with God or Jesus. Express sorrow for the times you failed to follow his direction and ask him to be with you the next time you encounter a similar situation. Give thanks to God for the grace that enabled you to follow his will freely. Feel the sorrow and gratitude in your heart as you converse with God.",
        "Ask God to help you as you look forward to a new day tomorrow. Resolve to cooperate and trust in the loving guidance of the Father, the Son, and the Holy Spirit. Conclude the day’s prayerful review with the Lord’s Prayer."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = examenTitle
        textView.text = examenTextArray[index]
    }
    
    //I only had the patience to record myself saying one examen but this code is easily modifiable if I did record every examen in the future.
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
        playSound(soundName: "stillnessAudio", audioPlayer: &audioPlayer)
    }
    
    
}


//
//  MotivationalViewController.swift
//  BC Reflect
//
//  Created by Jess on 12/1/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit

class MotivationalViewController: UIViewController {
    
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    
    //had a hard time finding a motivational quote api so instead, I entered some of my favorite quotes. again, if I had more resources, I would add more quotes and background images that way a repeat would never happen

    let quoteArray = ["Life is about making an impact, not making an income. -Kevin Kruse",
                      "Whatever the mind of man can conceive and believe, it can achieve. –Napoleon Hill",
                      "Strive not to be a success, but rather to be of value. –Albert Einstein",
                      "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.  –Robert Frost",
                      "I attribute my success to this: I never gave or took any excuse. –Florence Nightingale",
                      "You miss 100% of the shots you don’t take. –Wayne Gretzky",
                      "I\'ve failed over and over and over again in my life. And that is why I succeed. –Michael Jordan",
                      "The most difficult thing is the decision to act, the rest is merely tenacity. –Amelia Earhart",
                      "Every strike brings me closer to the next home run. –Babe Ruth",
                      "Definiteness of purpose is the starting point of all achievement. –W. Clement Stone",
                      "Life is what happens to you while you’re busy making other plans. –John Lennon",
                      "We become what we think about. –Earl Nightingale"]
    
    let numOfImages = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let length = quoteArray.count-1
        let randomIndex = Int.random(in: 0...length)
        quoteLabel.text = quoteArray[randomIndex]
        let randImage = Int.random(in: 1..<numOfImages)
        bgImageView.image = UIImage(named: "\(randImage)")
        UIView.animate(withDuration: 2) {
            self.quoteLabel.alpha = 1
        }
    }
    
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 1) {
            self.quoteLabel.alpha = 0
        }
        quoteLabel.text = quoteArray.randomElement()
        let randImage = Int.random(in: 1..<numOfImages)
        bgImageView.image = UIImage(named: "\(randImage)")
        UIView.animate(withDuration: 2) {
            self.quoteLabel.alpha = 1
        }
    }
    


}

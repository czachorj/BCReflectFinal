//
//  OppDetailViewController.swift
//  BC Reflect
//
//  Created by Jess on 12/1/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit

class OppDetailViewController: UIViewController {
    
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var oppTitle: String!
    var index: Int!
    
    //again, there is not one single page on Campus Ministry's website that has all this data so it was impossible to pull from. Instead, I diod searching from various sources and compiled opportunities have to reflect in person.
    let titleArray = ["Taizé", "Study by the Sea", "Weekly Examen", "Taizé", "Weekly Examen", "Manresa Silent Retreat"]
    let dateTimeArray = ["Dec 9 from 7:30 - 8:15 PM", "December 10 - 11", "Dec 11 from 9:45 - 10 PM", "Dec 16 from 7:30 - 8:15 PM", "Dec 18 from 9:45 - 10 PM", "January 8-12, 2020"]
    let LocationArray = ["St. Ignatius Church", "Bellarmine House in Cohasset, MA", "58 College Road", "St. Ignatius Church", "58 College Road", "Bellarmine House in Cohasset, MA"]
    let descriptionArray = ["A contemplative candlelight service with beautiful music, Taizé songs, silences, and prayer.", "Get the most out of your study days by getting away from the distractions of campus life. Study, write papers, and reflect about your semester on the beautiful shores of Cohasset, MA. Our Ignatian heritage encourages the practice of cura personalis, which is Latin for care of the whole person – mind, body, spirit, and soul. Join us on Study by the Sea to learn the practice of Cura Personalis as you prepare for exams! Cost is $50. Register on BC Campus Ministry's website.", "Spend 15 minutes in prayerful reflection, using St. Ignatius Loyola's Examen.", "A contemplative candlelight service with beautiful music, Taizé songs, silences, and prayer.", "Spend 15 minutes in prayerful reflection, using St. Ignatius Loyola's Examen.", "Manresa is a silent retreat based on St. Ignatius of Loyola’s Spiritual Exercises. Manresa is a time of quiet, reflection, and prayer with an open, flexible schedule in a peaceful setting. Cost is $100. Register on BC Campus Ministry's website."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventNameLabel.text = oppTitle
        dateTimeLabel.text = dateTimeArray[index]
        locationLabel.text = LocationArray[index]
        textView.text = descriptionArray[index]
    }
    

}

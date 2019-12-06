//
//  ViewController.swift
//  BC Reflect
//
//  Created by Jess on 11/30/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var beginLabel: UILabel!
    @IBOutlet weak var gassonImage: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    
    let date = Date()
    let calendar = Calendar.current
    // setting up constants for differentiating at what point in the day the user is in right now.
    let morning = 6
    let afternoon = 12
    let evening = 16
    let night = 22
    
    //motivational snippits for intro message
    let morningPhrases = ["Don't forget breakfast!", "Today will be your day!", "You can handle anything.", "Hope you slept well!", "Today has so much potential!"]
    let dayPhrases = ["Make the day count!", "Seize the day!", "Today is your oyster.", "Take a deep breath.", "You are unstoppable."]
    let eveningPhrases = ["It's a beautiful evening.", "Evening is the time for rest.", "Enjoy your evening.", "Evenings are blessings.", "Enjoy the sunset!"]
    let nightPhrases = ["Sleep well!", "Don't let the bedbugs bite!", "Sweet dreams.", "See you tomorrow.", "Brush your teeth!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        //these animations are used to fade in the labels one at a time.
        UIView.animate(withDuration: 2) {
            self.greetingLabel.alpha = 1
        }
        UIView.animate(withDuration: 3.75) {
            self.weatherLabel.alpha = 1
        }
        UIView.animate(withDuration: 4.5) {
            self.summaryLabel.alpha = 1
        }
        UIView.animate(withDuration: 7) {
            self.beginLabel.alpha = 1
        }
        let hour = calendar.component(.hour, from: date)
        print("Hour: \(hour)")
        
        //call data from Darksky and depending on the temperature in Chestnut Hill (made a simplification/assumption that the app is only used in Chestnut Hill since it is a BC app), leave an uplifting weather-relevant message.
    Alamofire.request("https://api.darksky.net/forecast/4e83f9249e18cee98061d8a39962684b/42.3329,-71.1728").responseJSON { response in
        switch response.result {
        case .success(let value):
            let json = JSON(value)
            if let temperature = json["currently"]["temperature"].double {
                print("TEMP is \(temperature)")
                    switch temperature {
                    case _ where temperature < 32.0:
                        print("very chilly")
                        self.weatherLabel.text = "It's very chilly! Stay warm!"
                    case _ where temperature < 50.0:
                        print("chilly")
                        self.weatherLabel.text = "It's chilly! Don't forget your jacket."
                    case _ where temperature < 70.0:
                        print("very comfortable")
                        self.weatherLabel.text = "Enjoy the comfortable weather outside!"
                    case _ where temperature < 80.0:
                        print("warm")
                        self.weatherLabel.text = "It's warm! Soak up that vitamin D!"
                    case _ where temperature > 80.0:
                        print("very hot")
                        self.weatherLabel.text = "It's very hot! Stay hydrated!"
                    default:
                        print("oh god")
                    }
            } else {
                print("Could not return a temperature!")
            }
        case .failure(let error):
            print(error)
            }
        }

        // depending on the time of day for the user, the home image of Gasson will be different and the background will match.
        if morning < hour, hour < afternoon {
            self.greetingLabel.text = "Good morning in Chestnut Hill!"
            self.summaryLabel.text = morningPhrases.randomElement()
            self.gassonImage.image = UIImage(named: "morning")
            self.view.backgroundColor = UIColor(red: 133/255, green: 191/255, blue: 220/255, alpha: 1.00)
        } else if afternoon <= hour, hour < evening {
            
            greetingLabel.text = "It's a good day in Chestnut Hill!"
            summaryLabel.text = dayPhrases.randomElement()
            gassonImage.image = UIImage(named: "day")
            self.view.backgroundColor = UIColor(red: 112/255, green: 187/255, blue: 253/255, alpha: 1.00)
        } else if evening <= hour, hour < night {
            
            greetingLabel.text = "Have a good evening in Chestnut Hill!"
            summaryLabel.text = eveningPhrases.randomElement()
            gassonImage.image = UIImage(named: "sunset")
            self.view.backgroundColor = UIColor(red: 77/255, green: 60/255, blue: 85/255, alpha: 1.00)
        } else {
            self.greetingLabel.text = "Sleep welll in Chestnut Hill!"
            self.summaryLabel.text = nightPhrases.randomElement()
            self.gassonImage.image = UIImage(named: "night")
            self.view.backgroundColor = UIColor(red: 6/255, green: 9/255, blue: 49/255, alpha: 1.00)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

}

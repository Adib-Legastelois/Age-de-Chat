//
//  ViewController.swift
//  Age de chat
//
//  Created by Adib Lgs on 2019-05-13.
//  Copyright © 2019 Adib Lgs. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var ageTextField:
        UITextField!
    @IBOutlet weak var resultLabel:
        UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculerAction(_
        sender: Any) {
        //Code quand bouton appuye
        //Ranger le clavier
        view.endEditing(true)
        //Verifier que l'utilisateur au entre du texte
        if ageTextField.text != nil {
            let texte = ageTextField.text!
            if let nombreEntier = Int(texte) {
                let agedeChat = nombreEntier * 7
                resultLabel.text = "Votre age de chat est de : \(agedeChat) ans."
            }
        }
    }
    
    
    @IBAction func soundAction(_ sender: Any) {
        //Faire parler notre app
        if let text = resultLabel.text {
            let speech = AVSpeechSynthesizer()
            let utterance = AVSpeechUtterance(string: text)
            utterance.rate = 0.5
            utterance.voice = AVSpeechSynthesisVoice(language: "fr_FR")
            speech.speak(utterance)
            
        }
    
    }
    
    
}


//
//  QuizVC.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import UIKit
import AVFoundation
import Foundation

class QuizVC: UIViewController {
    
    
    @IBOutlet var progress: UIProgressView!
    @IBOutlet var lblTimer: UILabel!
    var arrQuestions = [QuestionOptions]()
    var questionNumber = 0
    var score = 0
    var isFromPractice = false
    var player: AVAudioPlayer?

    @IBOutlet var btnPrev: UIButton!
    @IBOutlet var btnNext: UIButton!
    @IBOutlet var btnD: UIButton!
    @IBOutlet var btnC: UIButton!
    @IBOutlet var btnB: UIButton!
    @IBOutlet var btnA: UIButton!
    @IBOutlet var lblCatagory: UILabel!
    @IBOutlet var lblQuestion: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progress.progress = 0.0
        appendQuestions()
        
        updateUI()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setTimer), userInfo: nil, repeats: true)
        
        
        if isFromPractice{
            progress.isHidden = true
        }else{
            progress.isHidden = false
        }
        
        

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        progress.progress = 0.0
        questionNumber=0
        score = 0;
        updateUI()
        
    }
    @objc func setTimer(){
        progress.progress += 0.01
        
    }
    

    @IBAction func btnOptionPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let check = checkAnswer(userAnswer)
        
        if check{
            playSound(Soundname: "correct")
            sender.borderColor = UIColor.green;
            btnA.isUserInteractionEnabled = false
            btnB.isUserInteractionEnabled = false
            btnC.isUserInteractionEnabled = false
            btnD.isUserInteractionEnabled = false
        }
        else {
            playSound(Soundname: "wrong")
            sender.borderColor = UIColor.red;
            btnA.isUserInteractionEnabled = false
            btnB.isUserInteractionEnabled = false
            btnC.isUserInteractionEnabled = false
            btnD.isUserInteractionEnabled = false
        }
        
    }
    
    @objc func updateUI(){
        
        
        btnA.isUserInteractionEnabled = true
        btnB.isUserInteractionEnabled = true
        btnC.isUserInteractionEnabled = true
        btnD.isUserInteractionEnabled = true
                
        lblQuestion.text = checkQuestion()
        //progress.progress = checkProgress()
        lblTimer.text = "Score: \(checkScore())"
        
        lblCatagory.text = "\(questionNumber + 1) / \(arrQuestions.count)"
        
        btnA.borderColor = UIColor.clear
        btnB.borderColor = UIColor.clear
        btnC.borderColor = UIColor.clear
        btnD.borderColor = UIColor.clear
        
        if questionNumber == 0 {
            btnPrev.isHidden = true
        }else{
            btnPrev.isHidden = false
        }
        
        btnA.setTitle(checkChoices()[0], for: .normal)
        btnB.setTitle(checkChoices()[1], for: .normal)
        btnC.setTitle(checkChoices()[2], for: .normal)
        btnD.setTitle(checkChoices()[3], for: .normal)
        
        
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        
        nextQuestion()
        
        if questionNumber == arrQuestions.count{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CongratulationsVC") as! CongratulationsVC
            vc.score = score
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
           
            progress.progress = 0.0
            updateUI()
        }
    }
    
    
    @IBAction func btnPrev(_ sender: UIButton) {
        PrevQuestion()
        progress.progress = 0.0
        updateUI()
    }
    
    func playSound(Soundname:String) {
        
        guard let url = Bundle.main.url(forResource: Soundname, withExtension: "mp3")
        else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            guard let player = player
            else { return }
            player.play()
        }
        catch let error {
            print(error.localizedDescription)
        }
    }
    
}

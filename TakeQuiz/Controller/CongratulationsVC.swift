//
//  CongratulationsVC.swift
//  TakeQuiz
//
//  Created by mac on 13/11/22.
//

import UIKit

class CongratulationsVC: UIViewController {

    @IBOutlet weak var lblFinalScore: UILabel!
    
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: true)
        
        lblFinalScore.text = "Your Final Score is : \(score)"
    }
    


    @IBAction func btnActionRetake(_ sender: UIButton) {
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizVC") as! QuizVC
//        self.navigationController?.pushViewController(vc, animated: true)
//
        
        
        self.navigationController?.popViewController(animated: true)
    }
}

//
//  QuestionListVC.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import UIKit

class QuestionListVC: UIViewController  {
    

    @IBOutlet var tblQuestionList: UITableView!
    var arrQuestions = [QuestionAns]()
    
    var catagory = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
        tblQuestionList.delegate = self
        tblQuestionList.dataSource = self
        
        
       if catagory == "Music"{
            appendDataForMusic()
        }else if catagory == "Electronics"{
            appendDataForElectronics()
        }else{
            
            appendDataForHumanBody()
        }
        
        
    }
    

    

}

extension QuestionListVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrQuestions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblQuestionList.dequeueReusableCell(withIdentifier: "QuestionListTableViewCell") as! QuestionListTableViewCell
    
        cell.lblQue.text = arrQuestions[indexPath.row].question
        cell.lblAns.text = "Answer : \(arrQuestions[indexPath.row].Answer)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tblQuestionList.estimatedRowHeight
    }
    
}

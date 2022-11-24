//
//  ViewController.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import UIKit

class ViewController: UIViewController  {
 

    @IBOutlet var tblMain: UITableView!
    
     var arrTblList = ["Lesson to Study" , "Practice" , "Take a Test"]
    var arrImg = ["icBell" , "icBell" , "icBell"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        tblMain.delegate = self
        tblMain.dataSource = self
        
    }
    

}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrTblList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tblMain.dequeueReusableCell(withIdentifier: "QuizMainTableViewCell") as! QuizMainTableViewCell
    
        cell.lblTitle.text = arrTblList[indexPath.row]
        cell.imgMain.image = UIImage(named: arrImg[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LessonVC") as! LessonVC
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }else if indexPath.row == 1{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "PracticeVC") as! PracticeVC
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizVC") as! QuizVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}


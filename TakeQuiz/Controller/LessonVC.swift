//
//  LessonVC.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import UIKit

class LessonVC: UIViewController {
  

   
    @IBOutlet var collectionLesson: UICollectionView!
    
    var arrSessionList = [ "Music" ,"Electronics","HumanBody"]
    var arrSesionImage =  ["music-note","Electronics","Human Body"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        
        
        collectionLesson.delegate = self
        collectionLesson.dataSource = self
    }
    


}

extension LessonVC : UICollectionViewDataSource,UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return arrSessionList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LessonCollectionViewCell", for: indexPath) as! LessonCollectionViewCell
        cell.lblTitle.text = arrSessionList[indexPath.row]
        cell.imgLesson.image = UIImage(named: arrSesionImage[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuestionListVC") as! QuestionListVC
        if indexPath.row == 0{
            vc.catagory = "Music"
        }else if indexPath.row == 1{
            vc.catagory = "Electronics"
        }else{
            vc.catagory = "HumanBody"
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.size.width / 2
        
        return CGSize(width: width, height: width)
    }
    
    
    
}

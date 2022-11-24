//
//  PracticeVC.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import UIKit

class PracticeVC: UIViewController  {
    
    
    
    @IBOutlet var collectionPractice: UICollectionView!
    
    
    var arrSessionList = ["Music" ,"Electronics","HumanBody"]
    var arrSesionImage = ["music-note","Electronics","Human Body"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        
        collectionPractice.delegate = self
        collectionPractice.dataSource = self
    }
    


}

extension PracticeVC : UICollectionViewDataSource,UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return arrSessionList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PracticeCollectionViewCell", for: indexPath) as! PracticeCollectionViewCell
        cell.lblTitle.text = arrSessionList[indexPath.row]
        cell.imgPractice.image = UIImage(named: arrSesionImage[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizVC") as! QuizVC
        vc.isFromPractice = true
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.size.width / 2
        
        return CGSize(width: width, height: width)
    }
    
    
    
}

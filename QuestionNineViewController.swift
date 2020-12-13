//
//  QuestionNineViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/13/20.
//

import UIKit

class QuestionNineViewController: UIViewController {
    var right = false;
    var fold = false;
    var ground = false;
    @IBOutlet weak var rightPaper: UIButton!
    @IBOutlet weak var foldPaper: UIButton!
    @IBOutlet weak var groundPaper: UIButton!
    @IBAction func rightp(_ sender: Any) {
        if rightPaper.backgroundColor == UIColor.black {
            rightPaper.backgroundColor = UIColor.white
        }else{
            rightPaper.backgroundColor = UIColor.black
            right = true;
        }
    }
    @IBAction func foldp(_ sender: Any) {
        if foldPaper.backgroundColor == UIColor.black {
            foldPaper.backgroundColor = UIColor.white
        }else{
            foldPaper.backgroundColor = UIColor.black
            fold = true;
        }
    }
    @IBAction func groundp(_ sender: Any) {
        if groundPaper.backgroundColor == UIColor.black {
            groundPaper.backgroundColor = UIColor.white
        }else{
            groundPaper.backgroundColor = UIColor.black
            ground = true;
        }
    }
    @IBAction func submitAnswer(_ sender: Any) {
        if(right==true){
            QuestionOneViewController.score+=1
        }
        if(fold==true){
            QuestionOneViewController.score+=1
        }
        if(ground==true){
            QuestionOneViewController.score+=1
        }
        
        let navC = storyboard?.instantiateViewController(identifier: "question10") as! QuestionTenViewController
         navC.modalPresentationStyle = .fullScreen
         present(navC, animated: true)
    
}
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

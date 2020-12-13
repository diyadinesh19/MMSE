//
//  QuestionFourViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/12/20.
//

import UIKit

class QuestionFourViewController: UIViewController {

    @IBOutlet weak var obj1: UITextField!
    @IBOutlet weak var obj2: UITextField!
    @IBOutlet weak var obj3: UITextField!
    
    @IBAction func submitAnswer(_ sender: Any) {
        if (obj1.text=="Apple" || obj1.text=="apple" || obj1.text=="Xylophone" || obj1.text=="xylophone" || obj1.text=="Glasses" || obj1.text=="glasses"){
            QuestionOneViewController.score+=1
        }
        if (obj2.text=="Apple" || obj2.text=="apple" || obj2.text=="Xylophone" || obj2.text=="xylophone" || obj2.text=="Glasses" || obj2.text=="glasses") && obj2.text!==obj3.text && obj2.text!==obj1.text{
            QuestionOneViewController.score+=1
        }
        if (obj3.text=="Apple" || obj3.text=="apple" || obj3.text=="Xylophone" || obj3.text=="xylophone" || obj3.text=="Glasses" || obj3.text=="glasses") && obj3.text!==obj2.text && obj3.text!==obj1.text{
            QuestionOneViewController.score+=1
        }
        let navC = storyboard?.instantiateViewController(identifier: "question5") as! QuestionFiveViewController
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

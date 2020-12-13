//
//  QuestionFiveViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/13/20.
//

import UIKit

class QuestionFiveViewController: UIViewController {
    @IBOutlet weak var num: UITextField!
    
    @IBAction func submitAnswer(_ sender: Any) {
        if (num.text=="100, 93, 86, 81, 74, 67, 60, 53, 46, 39, 32, 25, 18, 11, 4"){
            QuestionOneViewController.score+=1
        }
        let navC = storyboard?.instantiateViewController(identifier: "question6") as! QuestionSixViewController
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

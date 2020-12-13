//
//  QuestionOneViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/12/20.
//

import UIKit

class QuestionOneViewController: UIViewController {
    static var score = 0;
    @IBOutlet weak var answer: UITextField!
    @IBAction func submitAnswer(_ sender: Any) {
        if answer.text == "winter" || answer.text == "Winter" {
            QuestionOneViewController.score += 1
            //QuestionsViewController.q1c = true;
        }
        let navC = storyboard?.instantiateViewController(identifier: "question2") as! QuestionTwoViewController
         //let n = UINavigationController(rootViewController: navC)
         navC.modalPresentationStyle = .fullScreen
         present(navC, animated: true)
        //self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
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

//
//  QuestionsViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/12/20.
//

import UIKit

class QuestionsViewController: UIViewController {
    static var q1c = false
    @IBOutlet weak var q1: UIButton!
    @IBOutlet weak var q2: UIButton!
    @IBOutlet weak var q3: UIButton!
    static var score = 0
    @IBAction func submit(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func questionOne(_ sender: Any) {
        let navC =  storyboard?.instantiateViewController(identifier: "question1") as! QuestionOneViewController
        navC.modalPresentationStyle = .fullScreen
        present(navC, animated: true)
        //navigationController?.pushViewController(navC, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if QuestionsViewController.q1c{
            q1.backgroundColor = .systemGreen
            q1.titleLabel?.textColor = .systemGreen
        }
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

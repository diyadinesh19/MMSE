//
//  ResultsViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/13/20.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var score: UILabel!
    @IBAction func submitAnswer(_ sender: Any) {
        self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text = "Your score was "+String(QuestionOneViewController.score)
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

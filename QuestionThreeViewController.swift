//
//  QuestionThreeViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/12/20.
//

import UIKit

class QuestionThreeViewController: UIViewController {
    @IBOutlet weak var zipcode: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var county: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var country: UITextField!
    
    @IBAction func submitAnswer(_ sender: Any) {
        if zipcode.text==ProfileViewController.postbox {
            QuestionOneViewController.score+=1
        }
        if city.text==ProfileViewController.city{
            QuestionOneViewController.score+=1
        }
        if county.text==ProfileViewController.county{
            QuestionOneViewController.score+=1
        }
        if state.text==ProfileViewController.state{
            QuestionOneViewController.score+=1
        }
        if country.text==ProfileViewController.country{
            QuestionOneViewController.score+=1
        }
        let navC = storyboard?.instantiateViewController(identifier: "question4prompt") as! QuestionFourPromptViewController
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

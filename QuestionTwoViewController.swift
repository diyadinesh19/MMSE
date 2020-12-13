//
//  QuestionTwoViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/12/20.
//

import UIKit

class QuestionTwoViewController: UIViewController {
    @IBOutlet weak var dateans: UITextField!
    @IBOutlet weak var weekday: UITextField!
    @IBAction func submitAnswer(_ sender: Any) {
        let date = Date()
        let calendar = Calendar.current
        
        let array = dateans.text?.components(separatedBy: "-");
        
        
        let weekdaycorrect = calendar.component(.weekday, from: date)
        if Int(array![2]) ==  (calendar.component(.year, from: date)){
            QuestionOneViewController.score += 1
        }
        if Int(array![0])  ==  (calendar.component(.month, from: date)){
            QuestionOneViewController.score += 1
        }
        print(calendar.component(.month, from: date))
        if Int(array![1])  ==  (calendar.component(.day, from: date)){
            QuestionOneViewController.score += 1
        }
        var temp:[String] = ["","sunday", "Sunday", "monday", "Monday", "tuesday", "Tuesday", "wednesday", "Wednesday", "thursday", "Thursday", "friday", "Friday", "saturday", "Saturday"]
        if weekday.text == temp[weekdaycorrect*2] || weekday.text == temp[weekdaycorrect*2-1] {
            QuestionOneViewController.score += 1
        }
        let navC = storyboard?.instantiateViewController(identifier: "question3") as! QuestionThreeViewController
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

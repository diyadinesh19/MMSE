//
//  QuestionFivePartTwoViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/13/20.
//

import UIKit

class QuestionFivePartTwoViewController: UIViewController {
    @IBOutlet weak var obj: UITextField!
    @IBAction func viewObj(_ sender: Any) {
    if let url = NSURL(string:"https://console.echoar.xyz/arjs?key=snowy-salad-3812&entry=bec5dda7-e2be-4452-ad52-1b76e41c4c87"){
        UIApplication.shared.open(url as URL, options:[:], completionHandler:nil)
    }
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        if obj.text=="Pencil" || obj.text=="pencil"{
            QuestionOneViewController.score+=1
        }
        
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

//
//  QuestionSevenPartOneViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/13/20.
//

import UIKit

class QuestionSevenPartOneViewController: UIViewController {
    @IBOutlet weak var obj: UITextField!
    @IBAction func viewObj(_ sender: Any) {
    if let url = NSURL(string:"https://go.echoar.xyz/bVsB"){
        UIApplication.shared.open(url as URL, options:[:], completionHandler:nil)
    }
        /*
         https://console.echoar.xyz/arjs?key=snowy-salad-3812&entry=f5bbaadd-a532-4855-ac76-2cd2f3c75aa7
         */
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        if obj.text=="Clock" || obj.text=="clock"{
            QuestionOneViewController.score+=1
        }
        let navC = storyboard?.instantiateViewController(identifier: "question7p2") as! QuestionSevenPartTwoViewController
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

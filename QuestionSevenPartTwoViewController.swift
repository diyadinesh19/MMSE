//
//  QuestionSevenPartTwoViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/13/20.
//

import UIKit

class QuestionSevenPartTwoViewController: UIViewController {
    @IBOutlet weak var obj: UITextField!
    @IBAction func viewObj(_ sender: Any) {
    if let url = NSURL(string:"https://console.echoar.xyz/samples/webar-chrome/snowy-salad-3812_1607883099267/index_snowy-salad-3812_1607883099267.html"){
        UIApplication.shared.open(url as URL, options:[:], completionHandler:nil)
    }
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        if obj.text=="Pencil" || obj.text=="pencil"{
            QuestionOneViewController.score+=1
        }
        let navC = storyboard?.instantiateViewController(identifier: "intermission") as! IntermissionViewController
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

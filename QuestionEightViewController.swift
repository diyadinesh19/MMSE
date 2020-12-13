//
//  QuestionEightViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/13/20.
//

import UIKit

class QuestionEightViewController: UIViewController {
    var ans = false;
    @IBOutlet weak var yesb: UIButton!
    @IBOutlet weak var nob: UIButton!
    @IBAction func yes(_ sender: Any) {
        if yesb.backgroundColor == UIColor.black {
            yesb.backgroundColor = UIColor.white
        }else{
            yesb.backgroundColor = UIColor.black
            ans = true;
        }
    }
    @IBAction func no(_ sender: Any) {
        if nob.backgroundColor == UIColor.black {
            nob.backgroundColor = UIColor.white
            ans = false;
        }else{
            nob.backgroundColor = UIColor.black
        }
    }
    @IBAction func submitAnswer(_ sender: Any) {
        if(ans==true){
            QuestionOneViewController.score+=1
        }
        
        let navC = storyboard?.instantiateViewController(identifier: "question9") as! QuestionNineViewController
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

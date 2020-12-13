//
//  StartViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/12/20.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBAction func start(_ sender: Any) {
       let navC = storyboard?.instantiateViewController(identifier: "question1") as! QuestionOneViewController
        //let n = UINavigationController(rootViewController: navC)
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

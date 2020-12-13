//
//  ProfileViewController.swift
//  MMSEApp
//
//  Created by Salini Sundaresan on 12/12/20.
//

import UIKit

class ProfileViewController: UIViewController {
    static var name = ""
    static var age = ""
    static var postbox = ""
    static var city = ""
    static var county = ""
    static var state = ""
    static var country = ""
    
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var postboxText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var countyText: UITextField!
    @IBOutlet weak var stateText: UITextField!
    @IBOutlet weak var countryText: UITextField!
    
    @IBAction func submitInfo(_ sender: Any) {
        ProfileViewController.name = nameText.text!
        ProfileViewController.age = ageText.text!
        ProfileViewController.postbox = postboxText.text!
        ProfileViewController.city = cityText.text!
        ProfileViewController.county = countyText.text!
        ProfileViewController.state = stateText.text!
        ProfileViewController.country = countryText.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameText.text = ProfileViewController.name
        ageText.text = ProfileViewController.age
        postboxText.text = ProfileViewController.postbox
        cityText.text = ProfileViewController.city
        countyText.text = ProfileViewController.county
        stateText.text = ProfileViewController.state
        countryText.text = ProfileViewController.country
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

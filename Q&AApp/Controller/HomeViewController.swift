//
//  HomeViewController.swift
//  Q&AApp
//
//  Created by AndyLin on 2022/8/3.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewInit()
        // Do any additional setup after loading the view.
    }
    
    func viewInit(){
        startButton.layer.cornerRadius = 20
    }
    
  
    @IBAction func nextAction(_ sender: Any) {
        performSegue(withIdentifier: "toQuestionSegue", sender: nil)
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

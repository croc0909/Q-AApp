//
//  ScoreViewController.swift
//  Q&AApp
//
//  Created by AndyLin on 2022/8/4.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var againButton: UIButton!
    
    //分數
    var score:Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ScoreViewInit()
        // Do any additional setup after loading the view.
    }
    
    func ScoreViewInit(){
        if let value = score{
            scoreLabel.text = String(value * 10)
        }else
        {
            
        }

        view1.transform = view1.transform.rotated(by: .pi * 0.05)
        view2.transform = view2.transform.rotated(by: .pi * -0.04)
        view3.transform = view3.transform.rotated(by: .pi * 0.03)
        view4.transform = view4.transform.rotated(by: .pi * 0.01)
        view5.transform = view5.transform.rotated(by: .pi * -0.05)
        
        againButton.layer.cornerRadius = 20
    }
    
    @IBAction func againAction(_ sender: Any) {
        //performSegue(withIdentifier: "reStartSegue", sender: nil)
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

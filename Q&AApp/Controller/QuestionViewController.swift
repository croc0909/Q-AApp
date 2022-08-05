//
//  QuestionViewController.swift
//  Q&AApp
//
//  Created by AndyLin on 2022/8/4.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var comicsNameLabel: UILabel!
    @IBOutlet weak var comicsImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var anserButtons: [UIButton]!
    @IBOutlet weak var nextQuestionButton: UIButton!
    
    @IBOutlet weak var questionView: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    //問題資料
    var questions = [Question]()
    //得分
    var score = 0
    //問題參數
    var questionIndex = 0
    //計時器
    var time:Timer?
    //時間
    var gameTime = 10
    //判斷顯示提示視窗
    var buttonBool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewInit()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextQuestionAction(_ sender: Any) {
        if(questionIndex == 9)
        {
            //跳頁 結算
            performSegue(withIdentifier: "toScoreSegue", sender: nil)
        }else
        {
            questionIndex += 1
            self.updateContent()
        }
        
        //button變為可互動 改回白色背景
        for index in 0...anserButtons.count-1 {
            //anserButtons[index].isUserInteractionEnabled = true
            anserButtons[index].backgroundColor = .white
        }
        //開放偵測點擊
        buttonBool = true
    }
    
    @IBAction func anserAction(_ sender: UIButton) {
        
        if(buttonBool){
            //關閉偵測點擊
            buttonBool = false
            /*
            //button變為不可互動
            for index in 0...anserButtons.count-1 {
                anserButtons[index].isUserInteractionEnabled = false
            }*/
            
            //檢查被點擊的答案
            if sender.title(for: .normal) != nil {
                //self.confirmAnswer(anser: buttonTitle)
                if sender.titleLabel?.text == questions[questionIndex].correctAnswer{
                    sender.backgroundColor = .green
                    
                    // 得分
                    score += 1
                    scoreLabel.text = String(score)
                }
                else
                {
                    sender.backgroundColor = .red
                    //要把正確答案找出來，並亮綠色
                    for choicebtn in 0...anserButtons.count-1 {
                        if anserButtons[choicebtn].titleLabel?.text == questions[questionIndex].correctAnswer {
                            anserButtons[choicebtn].backgroundColor = .green
                            break
                        }
                    }
                }
            }
            else
            {
                print("buttonTitle nil")
            }
        }
        else
        {
            //使用 UIAlertController 跳出提示視窗
            let controller = UIAlertController(title: "此題已作答過 !!", message: "點選 NEXT 開始下一題吧", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default,handler: nil)
            
            controller.addAction(okAction)
            present(controller, animated: true, completion: nil)
        }
        
    }
    
    @IBSegueAction func toScoreSegueAction(_ coder: NSCoder) -> ScoreViewController? {
        let controller = ScoreViewController(coder: coder)
        controller?.score = score
        
        return controller
    }
    
    
    
    func viewInit(){
        //將題目從model讀取出來
        questions = questionList
        //將題目重新排序
        questions.shuffle()
        //更新畫面
        self.updateContent()
        
        comicsImageView.layer.cornerRadius = 20
        nextQuestionButton.layer.cornerRadius = 20
        questionView.layer.cornerRadius = 20
        
        for button in anserButtons{
            button.layer.cornerRadius = 20
        }
    }
    
    
    func updateContent(){
        //讀取漫畫圖片
        comicsImageView.image = UIImage(named: questions[questionIndex].comicsImageName!)
        //讀取漫畫名稱
        comicsNameLabel.text = questions[questionIndex].comicsName!
        //讀取漫畫問題
        questionLabel.text = questions[questionIndex].comicsQuestion
        
        
        print(questions[questionIndex].allAnswer[0])
        
        for index in 0...anserButtons.count-1{
            print(index)
        
            anserButtons[index].setTitle(questions[questionIndex].allAnswer[index], for: .normal)
        }
        
        //現在是第幾題
        questionNumberLabel.text = String(questionIndex + 1)
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

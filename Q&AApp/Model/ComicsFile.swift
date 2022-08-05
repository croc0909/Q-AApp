//
//  ComicsFile.swift
//  Q&AApp
//
//  Created by AndyLin on 2022/8/4.
//

import UIKit

struct Question {
    var comicsName:String?
    var comicsImageName:String?
    var comicsQuestion:String?
    let allAnswer:[String]
    let correctAnswer: String
}

var questionList = [
    Question(comicsName: "鬼滅之刃",comicsImageName: "鬼滅之刃Q1",comicsQuestion: "炭治郎家族傳承的舞蹈名稱是什麼?", allAnswer: ["出雲流神樂舞","伊勢流神樂舞", "火之神神樂舞"], correctAnswer: "火之神神樂舞"),
    Question(comicsName: "鬼滅之刃",comicsImageName: "鬼滅之刃9柱",comicsQuestion: "鬼殺隊有幾位柱?", allAnswer: ["7位","8位", "9位"], correctAnswer: "9位"),
    Question(comicsName: "火影忍者",comicsImageName: "尾獸",comicsQuestion: "火影忍者裡有幾隻尾獸?", allAnswer: ["9隻","8隻","7隻"], correctAnswer: "9隻"),
    Question(comicsName: "火影忍者",comicsImageName: "木葉忍者村",comicsQuestion: "火影忍者世界觀內有幾個國家?", allAnswer: ["4個","5個","6個"], correctAnswer: "5個"),
    Question(comicsName: "鋼之鍊金術師",comicsImageName: "鍊成陣",comicsQuestion: "國土練成陣與煉丹術煉成陣圖案是由幾角形構成?", allAnswer: ["3角形","5角形","6角形"], correctAnswer: "5角形"),
    Question(comicsName: "鋼之鍊金術師",comicsImageName: "鍊成",comicsQuestion: "啟動鍊金術的構築式，基本就是「?」的力量", allAnswer: ["圓","精神","靈魂"], correctAnswer: "圓"),
    Question(comicsName: "棒球大聯盟",comicsImageName: "吉普森二世",comicsQuestion: "世界棒球錦標賽 美國VS日本 吾郎與吉普森二世的對決結果是?", allAnswer: ["全壘打","三振","接殺出局"], correctAnswer: "全壘打"),
    Question(comicsName: "棒球大聯盟",comicsImageName: "傷",comicsQuestion: "棒球大聯盟世界棒球錦標賽後， 吾郎因為什麼疾病被迫休養?", allAnswer: ["投球恐懼症","手肘韌帶斷裂","腳踝扭傷"], correctAnswer: "投球恐懼症"),
    Question(comicsName: "獵人",comicsImageName: "幻影旅團",comicsQuestion: "幻影旅團內有幾位跟小傑一樣是強化系念能力者?", allAnswer: ["2位","3位","4位"], correctAnswer: "3位"),
    Question(comicsName: "獵人",comicsImageName: "世界樹",comicsQuestion: "小傑去世界樹找金，那顆世界樹的高度是多少?", allAnswer: ["1784米"," 2521米","925米"], correctAnswer: "1784米")

]

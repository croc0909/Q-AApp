//
//  SharpImageView.swift
//  Q&AApp
//
//  Created by AndyLin on 2022/8/3.
//

import UIKit

class SharpImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func layoutSubviews() {
       super.layoutSubviews()
       let path = UIBezierPath()
       //設計路徑 從左上角(0,0)開始
       path.move(to: CGPoint.zero)
        //從(0,0)畫線到圖片右上角的點
       path.addLine(to: CGPoint(x: bounds.width, y: 0))
        //從圖片右上角的點畫線到圖片右下角的點
       path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        //從圖片右下角的點畫線到圖片左下角的點
       path.addLine(to: CGPoint(x: 0, y: bounds.height * 0.8))
       path.close()
       let shapeLayer = CAShapeLayer()
       shapeLayer.path = path.cgPath
       layer.mask = shapeLayer
    }

}

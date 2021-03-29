//
//  BackgroundColor.swift
//  GukouFitness
//
//  Created by 谷口翔太 on 2021/03/28.
//

import UIKit

@IBDesignable
class BackgroundColor : UIView {
    
    @IBInspectable var topColor : UIColor = #colorLiteral(red: 0.09053254873, green: 0.1765010655, blue: 0.3699401021, alpha: 1)
    @IBInspectable var bottomColor : UIColor = #colorLiteral(red: 0.02345485613, green: 0.1444202065, blue: 0.2849268317, alpha: 1)
    
    var startPointX: CGFloat = 0
    var startPointY: CGFloat = 0
    var endPointX:CGFloat = 1
    var endPointY:CGFloat = 1
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}


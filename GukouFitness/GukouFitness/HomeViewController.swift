//
//  HomeViewController.swift
//  GukouFitness
//
//  Created by 谷口翔太 on 2021/03/28.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        self.title = "item"
        self.tabBarItem.image = UIImage(named: "home")
        self.tabBarItem.selectedImage = UIImage(named: "item_selected")
    }
}

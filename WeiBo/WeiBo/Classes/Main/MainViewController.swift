//
//  MainViewController.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/1.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    //MARK:属性 懒加载
    lazy var composeBtn = UIButton(composeForeImageName: "tabbar_compose_icon_add", composeBackImageName: "tabbar_compose_button")

    
    //MARK:重写方法
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.addSubview(composeBtn)
    }
    
    override func viewWillLayoutSubviews() {
        composeBtn.center = CGPoint(x: tabBar.center.x, y:tabBar.bounds.height * 0.5)
    }

}

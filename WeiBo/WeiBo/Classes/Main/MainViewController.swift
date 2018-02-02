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
        
        //方法1：Selector("方法名")  Swift已经不推荐使用，会被提示改成第二种代替
//        composeBtn.addTarget(self, action:Selector(("composeBtnClick")), for: .touchUpInside)
        //方法2：Selector("类名.方法名") 推荐写法
        composeBtn.addTarget(self, action:#selector(MainViewController.composeBtnClick), for: .touchUpInside)
        //方法3："方法名"
//          composeBtn.addTarget(self, action:"composeBtnClick", for: .touchUpInside)

    }

}

//MARK:事件监听
extension MainViewController{
    
    //这里必须要加@objc 否则会崩溃
    @objc func composeBtnClick(){
        print("发布")
    }
}

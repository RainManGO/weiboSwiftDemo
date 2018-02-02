//
//  MainViewController.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/1.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let path = Bundle.main.path(forResource: "TabbarVcList", ofType: "plist") else{
            return
        }
        
        guard  let pages = NSArray.init(contentsOfFile: path) else{
            return
        }
       
        for  dic in pages {
            
            guard let dic1 = dic as? Dictionary<String, String> else{
                return
            }
            
            addChildViewController(childController: dic1["VcName"]!, title: dic1["title"]!, imageName: dic1["imageName"]!)
        }
    }

   

    
    
     private  func addChildViewController(childController: String,title:String,imageName:String) {

        guard let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else{
            print("没有命名空间")
            return
        }
        
        guard let childClass = NSClassFromString(nameSpace+"."+childController) else {
            print("没有创建")
            return
        }
        
        guard let childType = childClass as? UIViewController.Type else{
            print("没有转型成功")
            return
        }
        
       let childVc = childType.init()
       childVc.title = title;
       childVc.tabBarItem.image = UIImage.init(named: imageName)
       childVc.tabBarItem.selectedImage = UIImage.init(named: imageName+"_selected")?.withRenderingMode(.alwaysOriginal)
       childVc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.black], for: .selected)
       addChildViewController(childVc)
    }
}

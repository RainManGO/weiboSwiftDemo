//
//  AppDelegate.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/1.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        defaultStyle()
        return true
    }
}


//默认系统样式配置
extension AppDelegate{
    
    func defaultStyle(){
        UINavigationBar.appearance().tintColor = nav_barItem_color
    }
}



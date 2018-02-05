//
//  NavicationBarItem-Extension.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/5.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    convenience init(title:String?,titleColor:UIColor?,titleFont:UIFont?){
        self.init(customView: UIButton.init(title: title, titleColor: titleColor, titleFont: titleFont, fit: false))
    }
    
    ///设置照片按钮常态和选择图片
    convenience init(imageName:String,callBack:(UIButton)->()){
        let nav_btn = UIButton.init(ForeImageName: imageName)
        self.init(customView:nav_btn)
        callBack(nav_btn)
    }
    
}

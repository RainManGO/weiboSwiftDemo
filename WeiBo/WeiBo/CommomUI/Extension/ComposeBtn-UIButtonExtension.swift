//
//  ComposeBtn-UIButtonExtension.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/2.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(composeForeImageName:String,composeBackImageName:String){
        self.init()
        setImage(UIImage.init(named: composeForeImageName), for: .normal)
        setBackgroundImage(UIImage.init(named: composeBackImageName), for: .normal)
        setBackgroundImage(UIImage.init(named: composeBackImageName+"_highlighted"), for: .selected)
        sizeToFit()
    }
    
    ///设置导航栏item图片按钮
    convenience init(ForeImageName:String){
        self.init()
        setImage(UIImage.init(named: ForeImageName), for: .normal)
        setImage(UIImage.init(named: ForeImageName+"_highlighted"), for: .highlighted)
        sizeToFit()
    }
    
    ///设置导航栏按钮初始化
    convenience init(title:String?,titleColor:UIColor?,titleFont:UIFont?,fit:Bool){
       
        self.init()
        generalBtn(size: nil, backImageNamed: nil, title: title, titleColor:titleColor, titleFont: titleFont, fit: fit)
        
    }
    
    ///通用按钮样式设置
    func generalBtn(size:CGSize?,backImageNamed:String?,title:String?,titleColor:UIColor?,titleFont:UIFont?,fit:Bool){
        
        titleLabel?.font = titleFont
        
        if fit == true {
            sizeToFit()
        }
        
        if let size = size {
            frame.size = size
        }
        
        setTitle(title, for:.normal)
        setTitleColor(titleColor, for: .normal)
        
        if let backImageNamed = backImageNamed {
            setBackgroundImage(UIImage.init(named: backImageNamed), for: .normal)
        }
        
    }
    
}

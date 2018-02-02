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
    
}

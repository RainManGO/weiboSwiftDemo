//
//  TitleButton.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/5.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class TitleButton: UIButton {

    ///创建titleBtn
    convenience init(imageName:String,selectImage:String,title:String){
        self.init()
        setTitle(title, for: .normal)
        titleLabel?.font = nav_titleView_font
        setTitleColor(UIColor.black, for: .normal)
        setImage(UIImage.init(named: imageName), for: .normal)
        setImage(UIImage.init(named: selectImage), for: .selected)
        sizeToFit()
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.frame.origin.x = 0
        imageView?.frame.origin.x = titleLabel!.frame.width + 8
    }

}

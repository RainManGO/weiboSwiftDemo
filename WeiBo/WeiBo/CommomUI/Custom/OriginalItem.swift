//
//  OriginalItem.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/2.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class OriginalItem: UITabBarItem {
    
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
        self.selectedImage = self.selectedImage?.withRenderingMode(.alwaysOriginal)
        self.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.black], for: .selected)
    }
    
}


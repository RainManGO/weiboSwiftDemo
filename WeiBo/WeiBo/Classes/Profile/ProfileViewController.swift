//
//  ProfileViewController.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/1.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        visitorView.setupVisitorViewWithInfo(iconImage: "visitordiscover_image_profile", title: "登陆后，你的微博、相册、个人资料会显示在这里，展示给别人")
    }

}

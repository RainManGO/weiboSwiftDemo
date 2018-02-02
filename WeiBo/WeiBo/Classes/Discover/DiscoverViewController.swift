//
//  DiscoverViewController.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/1.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class DiscoverViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        visitorView.setupVisitorViewWithInfo(iconImage: "visitordiscover_image_message", title: "登陆后，别人评论你的微博，给你发消息，都会在这里收到通知")
    }

   
}

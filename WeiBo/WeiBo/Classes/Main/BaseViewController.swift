//
//  BaseViewController.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/2.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {

    lazy var visitorView:VistorView = VistorView.vistorView()
    private var  isLogin:Bool = false
    
    override func loadView() {
        isLogin ? super.loadView() : setupVisitorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
}

extension BaseViewController{
    
    private func setupVisitorView(){
        view = visitorView
    }
    
}

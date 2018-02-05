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
    private var  isLogin:Bool = true
    
    override func loadView() {
        isLogin ? super.loadView() : setupVisitorView()
    }
    
    
    //MARK:系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}

//MARK:访客视图
extension BaseViewController{
    
    private func setupVisitorView(){
        visitorView.registBtn.addTarget(self, action: #selector(BaseViewController.leftBtnClick), for: .touchUpInside)
        visitorView.loginBtn.addTarget(self, action: #selector(BaseViewController.rightBtnClick), for: .touchUpInside)
        view = visitorView
        creatNavicationItem()
    }
    
}

//MARK: Navication左右按钮
extension BaseViewController{
    
    func creatNavicationItem(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: nav_barItem_left, style: .plain, target: self, action: #selector(BaseViewController.leftBtnClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: nav_barItem_right, style: .plain, target: self, action: #selector(BaseViewController.rightBtnClick))
    }
    
    @objc func leftBtnClick(){
        print("注册")
    }
    
    @objc func rightBtnClick(){
        print("登录")
    }
}

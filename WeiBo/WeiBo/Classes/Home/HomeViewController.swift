//
//  HomeViewController.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/1.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    //MARK: 系统懒加载方法
    lazy var leftNavItem = UIBarButtonItem.init(imageName:"navigationbar_friendattention", callBack: { (leftBtn) in
        leftBtn.addTarget(self, action: #selector(HomeViewController.friendBtnClick), for: .touchUpInside)
    })
    
    lazy var rightNavItem = UIBarButtonItem.init(imageName:"navigationbar_pop", callBack: { (rightBtn) in
        rightBtn.addTarget(self, action: #selector(HomeViewController.qrcodeBtnClick), for: .touchUpInside)
    })
    
    lazy var titleBtn:TitleButton = {
        let titleBtn = TitleButton.init(imageName: "navigationbar_arrow_down", selectImage: "navigationbar_arrow_up", title: "Cc_ZY_Code")
        titleBtn.addTarget( self, action: #selector(HomeViewController.titleBtnClick), for: .touchUpInside)
        return titleBtn
    }()
    
    lazy var modalDelegateManer:HomeModalTransMager = HomeModalTransMager { (presented) in
        self.titleBtn.isSelected = presented
    }
    
    lazy var popperVC: PopperViewController = {
        let popperVC = PopperViewController()
        popperVC.modalPresentationStyle = .custom
        popperVC.transitioningDelegate = modalDelegateManer
        return popperVC
    }()
    
    //MARK: 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorView.addRotation()
        setNavBarItem()
    }
}

//MARK:  设置导航栏按钮
extension HomeViewController{

    func setNavBarItem(){
        navigationItem.leftBarButtonItem = leftNavItem
        navigationItem.rightBarButtonItem = rightNavItem
        navigationItem.titleView = titleBtn
    }
    
    @objc func friendBtnClick(){
        print("friendBtnClick")
    }
    
    @objc func qrcodeBtnClick(){
        print("qrcodeBtnClick")
    }
    
    @objc func titleBtnClick(){
        present(popperVC, animated: true, completion: nil)
    }
    
}



//
//  HomePoperPresentationController.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/5.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class HomePoperPresentationController: UIPresentationController {

    //MARK: 懒加载属性
    lazy var maskView:UIView = UIView()
        
    //重新布局容器所有的view
    override func containerViewWillLayoutSubviews() {
        super.containerViewWillLayoutSubviews()
        presentedView?.frame = CGRect(x: 100,y: 90, width: 200, height: 250)
        setMaskView()
    }
}


//MARK: 设置UI界面
extension HomePoperPresentationController{
    
    private func setMaskView(){
        containerView?.insertSubview(maskView, at: 0)
        maskView.backgroundColor = UIColor.init(white: 0.2, alpha: 0.5)
        maskView.frame = containerView!.frame
        addTapRecognizer()
    }
    
    private func addTapRecognizer(){
        let tapRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(HomePoperPresentationController.tapMaskView))
        maskView.addGestureRecognizer(tapRecognizer)
    }
    
    @objc private func tapMaskView(){
        presentedViewController.dismiss(animated: true, completion: nil)
    }
}

//
//  HomeModalTransMager.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/5.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class HomeModalTransMager: NSObject {
    //MARK:懒加载属性
    lazy var transitionManger:TransitioningManager = TransitioningManager()
    
    //回调闭包传回动画状态
    var transitationCallBack:((Bool)->())?
    
    init(transitationCallBack:@escaping (Bool)->()) {
        self.transitationCallBack = transitationCallBack
    }
    
}


//MARK: UIViewControllerTransitioningDelegate代理回调
extension HomeModalTransMager:UIViewControllerTransitioningDelegate{
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return HomePoperPresentationController(presentedViewController: presented, presenting: presenting)
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transitionManger.isPresented = true
        transitationCallBack!(transitionManger.isPresented)
        return transitionManger
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transitionManger.isPresented = false
        transitationCallBack!(transitionManger.isPresented)
        return transitionManger
    }
    
}

//
//  TransitioningManager.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/5.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class TransitioningManager: NSObject ,UIViewControllerAnimatedTransitioning{
    
    var isPresented:Bool = false
    
    //执行动画的时间
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1.5
    }
    
    // UIViewControllerContextTransitioning 转场上下文，可获取消失和弹出相关参数
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        isPresented == true ? presentedAnimateTransition(using: transitionContext) : dismissAnimateTransition(using: transitionContext)
    }
    
    //弹出动画
    private func presentedAnimateTransition(using transitionContext: UIViewControllerContextTransitioning){
        //1.拿到弹出视图
        let presentedView = transitionContext.view(forKey:.to)!
        //2.添加到容器视图
        transitionContext.containerView.addSubview(presentedView)
        //3.执行动画
        presentedView.transform = CGAffineTransform.init(scaleX: 1.0, y: 0.0)
        presentedView.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            presentedView.transform = CGAffineTransform.identity
        }) { (_) in
            transitionContext.completeTransition(true)
        }
    }
    
    //消失动画
    private func dismissAnimateTransition(using transitionContext: UIViewControllerContextTransitioning){
        //1.拿到弹出视图
        let dismissView = transitionContext.view(forKey:.from)!
        //2.添加到容器视图
        transitionContext.containerView.addSubview(dismissView)
        //3.执行动画
        dismissView.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            dismissView.transform = CGAffineTransform.init(scaleX: 1.0, y: 0.0000001)
        }) { (_) in
            dismissView.removeFromSuperview()
            transitionContext.completeTransition(true)
        }
    }
}

//
//  VistorView.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/2.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class VistorView: UIView {

    //MARK: 类方法从xib获取
    class func vistorView()->VistorView{
        return Bundle.main.loadNibNamed("VistorView", owner: nil, options: nil)?.last as! VistorView
    }
    
    //MARK: XIB属性
    @IBOutlet weak var rotationView: UIImageView!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var remindLabel: UILabel!
    
    func setupVisitorViewWithInfo(iconImage:String,title:String){
        iconView.image = UIImage.init(named: iconImage)
        remindLabel.text = title
        rotationView.isHidden = true
    }
    
    func addRotation() {
//        UIView.animate(withDuration: 0.5) {
//            self.rotationView.transform = self.rotationView.transform.rotated(by: 2.0)
//        }
        let rotationAnim = CABasicAnimation.init(keyPath: "transform.rotation.z")
        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 1.0
        rotationView.layer.add(rotationAnim, forKey: nil)
   }
    
}

//
//  ViewController.swift
//  LoginAnimationDemo
//
//  Created by 也许、 on 2016/11/17.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 用户名居中约束
    @IBOutlet weak var userNameTextCenterConstraint: NSLayoutConstraint!
    
    // 密码居中约束
    @IBOutlet weak var passwordTextCenterConstraint: NSLayoutConstraint!
    
    // 登陆按钮居中约束
    @IBOutlet weak var loginBtnCenterConstraint: NSLayoutConstraint!
    
    // 视图显示前把3个控件的居中约束修改为 ： 一个视图的间隔
    override func viewWillAppear(_ animated: Bool) {
        
        print(#function)
        super.viewWillAppear(animated)
        
        userNameTextCenterConstraint.constant -= self.view.bounds.width
        passwordTextCenterConstraint.constant -= self.view.bounds.width
        loginBtnCenterConstraint.constant -= self.view.bounds.width
        
    }
    
    // 视图显示后，将控件的居中约束恢复(加入动画效果)
    override func viewDidAppear(_ animated: Bool) {
        
        print(#function)
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.2, delay: 0.5, options: .curveEaseInOut, animations: { ()->() in
            self.userNameTextCenterConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseInOut, animations: { ()->() in
            self.passwordTextCenterConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseInOut, animations: { ()->() in
            self.loginBtnCenterConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "登陆界面"
        print(#function)
        
    }

}


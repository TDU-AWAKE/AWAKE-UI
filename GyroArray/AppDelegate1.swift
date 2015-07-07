//
//  AppDelegate1.swift
//  GyroArray
//
//  Created by 崔漢鐘 on 2015/07/07.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import Foundation
import UIKit


@UIApplicationMain
class AppDelegate1: UIResponder, UIApplicationDelegate {
    
    private var window: UIWindow?
    private var myTabBarController: UITabBarController!
    
    /*
    アプリケーション起動時に呼ばれるメソッド.
    */
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // Tabに設定するViewControllerのインスタンスを生成.
        let myFirstTab: UIViewController = FirstViewController()
        let mySecondTab: UIViewController = SecondViewController()
        //let myImage: UIImage = UIImage(named: "640 * 960.png")!
        //let myImageView: UIImageView = UIImageView()
        //myImageView.image = myImage
        //myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        //self.view.addSubview(myImageView)
        
        
        // タブを要素に持つArrayの.を作成する.
        let myTabs = NSArray(objects: myFirstTab, mySecondTab)
        
        // UITabControllerの作成する.
        myTabBarController = UITabBarController()
        
        
        // ViewControllerを設定する.
        myTabBarController?.setViewControllers(myTabs as [AnyObject], animated: false)
        
        // RootViewControllerに設定する.
        self.window!.rootViewController = myTabBarController
        
        self.window!.makeKeyAndVisible()
        
        return true
    }
}
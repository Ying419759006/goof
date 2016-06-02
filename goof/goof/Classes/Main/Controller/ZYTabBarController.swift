//
//  ZYTabBarController.swift
//  goof
//
//  Created by ZYing on 16/5/30.
//  Copyright © 2016年 artron. All rights reserved.
//

import UIKit

class ZYTabBarController: UITabBarController {

    override class func initialize() {
        
        let item = UITabBarItem.appearanceWhenContainedInInstancesOfClasses([self])
        
        var attr = [String : AnyObject]()
        
        attr[NSForegroundColorAttributeName] = UIColor.blackColor()
        attr[NSFontAttributeName] = UIFont.systemFontOfSize(12)
        
        item.setTitleTextAttributes(attr, forState: UIControlState.Normal)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController()
        setTabBar()
    }
    
     func addChildViewController(
    ) {
        
        //Joke段子控制器
        
        setChildrenController("爆笑🎈", image: UIImage.init(named: "tabBar_essence_icon")!, selectedImage: UIImage.init(named: "tabBar_essence_click_icon")!,controller: JokeController.init())
        
        setChildrenController("趣事📣", image: UIImage.init(named: "tabBar_new_icon")!, selectedImage: UIImage.init(named: "tabBar_new_click_icon")!,controller: NewsController.init())
        
//        setChildrenController("音乐🎵", image: UIImage.init(named: "tabBar_friendTrends_icon")!, selectedImage: UIImage.init(named: "tabBar_friendTrends_click_icon")!,controller: QQListViewController.init())
        let storyB = UIStoryboard(name: "QQListTVC", bundle: nil)
        let QQListTVC = storyB.instantiateViewControllerWithIdentifier("MusicListViewController")
        QQListTVC.tabBarItem.title = "音乐🎵"
        QQListTVC.tabBarItem.image = UIImage.init(named: "tabBar_friendTrends_icon")!
        QQListTVC.tabBarItem.selectedImage = UIImage.init(named: "tabBar_friendTrends_click_icon")!
        
        addChildViewController(QQListTVC)
        
        
        setChildrenController("女神👧", image: UIImage.init(named: "tabBar_me_icon")!, selectedImage: UIImage.init(named: "tabBar_me_click_icon")!,controller: MeController.init())
    }
    
    private func setChildrenController(title: String, image:UIImage, selectedImage:UIImage, controller: UIViewController) {
        
        controller.tabBarItem.title = title
        controller.tabBarItem.image = image
        controller.tabBarItem.selectedImage = selectedImage
        
        //包装导航控制器
        let navigationController = UINavigationController.init(rootViewController: controller)
        
        addChildViewController(navigationController)
        
    }
    
    //设置导航栏
    func setTabBar() {
        
        let tabBar = ZYTabBar.init()
        
        setValue(tabBar, forKey: "tabBar")
        
        
    }
    
}

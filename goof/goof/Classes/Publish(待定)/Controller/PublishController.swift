//
//  PublishController.swift
//  goof
//
//  Created by ZYing on 16/5/30.
//  Copyright © 2016年 artron. All rights reserved.
//

import UIKit

class PublishController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.greenColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}

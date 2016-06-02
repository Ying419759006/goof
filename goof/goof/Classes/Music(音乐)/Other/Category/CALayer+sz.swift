//
//  CALayer+sz.swift

//  goof
//
//  Created by ZYing on 16/5/30.
//  Copyright © 2016年 artron. All rights reserved.
//

import UIKit

extension CALayer {

    // 暂停动画
    func pauseAnimate()
    {
        let pausedTime: CFTimeInterval = convertTime(CACurrentMediaTime(), fromLayer: nil)
        speed = 0.0;
        timeOffset = pausedTime;
    }

    // 恢复动画
    func resumeAnimate()
    {
        let pausedTime: CFTimeInterval = timeOffset
        speed = 1.0;
        timeOffset = 0.0;
        beginTime = 0.0;
        let timeSincePause: CFTimeInterval = convertTime(CACurrentMediaTime(), fromLayer: nil) - pausedTime
        beginTime = timeSincePause;
    }


}

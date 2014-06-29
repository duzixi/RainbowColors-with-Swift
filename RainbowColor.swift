//
//  RainbowColor.swift
//
//  Created by 杜子兮 on 14-6-29.
//  Copyright (c) 2014年 lanou. All rights reserved.
//

import UIKit

// x: 0 ~ 256 * 5 - 1
func rainbowColor(x :Float) -> UIColor {
    var unit:Float = 256
    var r:Float = 0, g:Float = 0, b:Float = 0
    if ( 0 <= x && x < unit) { //赤 -> 橙 -> 黄
        r = unit - 1
        g = x
    } else if (x < unit * 2) { //黄 -> 绿
        r = unit - 1 - x % unit
        g = unit - 1
    } else if (x < unit * 3) { //绿 -> 青
        g = unit - 1 - x % unit / 2
        b = x % unit
    } else if (x < unit * 4) { //青 -> 蓝
        g = unit / 2 - 1 - x % unit / 2
        b = unit - 1
    } else if (x < unit * 5) { //蓝 -> 紫
        r = x % unit
        b = unit - 1
    }
    return UIColor(red:r / (unit - 1), green:g / (unit - 1), blue:b / (unit - 1), alpha: 1.0)
}

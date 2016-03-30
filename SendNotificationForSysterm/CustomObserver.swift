//
//  CustomObserver.swift
//  SendNotificationForSysterm
//
//  Created by ying on 16/3/30.
//  Copyright © 2016年 ying. All rights reserved.
//

import Foundation

//**********************************************************************
//自定义通知类型
//**********************************************************************

class CustomObserver: NSObject {
    
    var name = ""
    
    init(name: String) {
        super.init()
        
        self.name = name
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "downloadImage:", name: "DownloadImageNotification", object: nil)
    }
    
    func downloadImage(notification: NSNotification) {
        let userInfo = notification.userInfo as! [String: AnyObject]
        let value1 = userInfo["value1"] as! String
        let value2 = userInfo["value2"] as! Int
        
        print("\(name) 获取到通知，用户数据是[\(value1), \(value2)]")
        sleep(3)
        print("\(name) 执行完毕！")
    }
    
    //移除通知
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
}
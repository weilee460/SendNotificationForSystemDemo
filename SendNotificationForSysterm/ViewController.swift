//
//  ViewController.swift
//  SendNotificationForSysterm
//
//  Created by ying on 16/3/30.
//  Copyright © 2016年 ying. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
         程序进入后台后，会发送UIApplicationDidEnterBackgroundNotification通知，
         可以事先注册个监听这个通知的“观察者”来处理.
         */
        let notificationCenter = NSNotificationCenter.defaultCenter()
        let operationQueue = NSOperationQueue.mainQueue()
        let applicationDidEnterBackgroundObserver = notificationCenter.addObserverForName(UIApplicationDidEnterBackgroundNotification, object: nil, queue: operationQueue) {
            (notification: NSNotification!) in
            print("Enter into background")
        }
        
        //不需要的话，取消通知注册，避免内存浪费或崩溃。
        //notificationCenter.removeObserver(applicationDidEnterBackgroundObserver)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


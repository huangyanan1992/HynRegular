//
//  AppDelegate.swift
//  HynRegular
//
//  Created by Huang Yanan on 16/8/22.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        if "1178848591@qq.com" =~ mailPattern {
            print("有效的邮箱地址")
        }
        
        if "https://github.com/huangyanan1992" =~ urlPattern {
            print("有效网址")
        }
        
        if "my-us3r_n4m3" =~ userNamePattern {
            print("有效用户名")
        }
        
        if "#a3c113" =~ hexValuePattern {
            print("16进制")
        }
        
        if "my-title-here" =~ slugPattern {
            print("slug")
        }
        
        if "http://www.jianshu.com/users/391939f53241/latest_articles" =~ urlPattern {
            print("有效url")
        }
        
        if "73.60.124.136" =~ ipPattern {
            print("有效ip")
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


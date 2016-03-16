//
//  AppDelegate.m
//  跳太平洋算了
//
//  Created by lanou on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LunTanViewController.h"
#import "ZCPViewController.h"
#import "JCZViewController.h"
#import "MyViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tab = [[UITabBarController alloc]init];
    
    
    ViewController *VC = [[ViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:VC];
    VC.tabBarItem.image =[UIImage imageNamed:@"1.png"];
    [VC.tabBarItem setTitle:@"资讯"];
    
    LunTanViewController *view2 = [[LunTanViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:view2];
    view2.tabBarItem.image =[UIImage imageNamed:@"2.png"];
    [view2.tabBarItem setTitle:@"论坛"];
    
    ZCPViewController *view3 = [[ZCPViewController alloc]init];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:view3];
    view3.tabBarItem.image =[UIImage imageNamed:@"3.png"];
    [view3.tabBarItem setTitle:@"找产品"];
    
    JCZViewController *view4 = [[JCZViewController alloc]init];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:view4];
    view4.tabBarItem.image =[UIImage imageNamed:@"4.png"];
    [view4.tabBarItem setTitle:@"聚超值"];
    
    MyViewController *view5 = [[MyViewController alloc]init];
    UINavigationController *nav5 = [[UINavigationController alloc]initWithRootViewController:view5];
    view5.tabBarItem.image =[UIImage imageNamed:@"5.png"];
    [view5.tabBarItem setTitle:@"我的"];
    
    
    
    
    NSArray *array = @[nav1,nav2,nav3,nav4,nav5];
    tab.viewControllers = array;
    self.window.rootViewController = tab;
    
    [self.window makeKeyAndVisible];
    

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

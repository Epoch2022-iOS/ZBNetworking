//
//  AppDelegate.m
//  ZBNetworking
//
//  Created by NQ UEC on 16/8/8.
//  Copyright © 2016年 Suzhibin. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomTabBarController.h"
#import "ZBNetworking.h"
#import "RequestTool.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    NSString *cachePath = [[ZBCacheManager sharedInstance]ZBKitPath];
    NSLog(@"cachePath = %@",cachePath);

    
    #pragma mark -  公共配置 RequestTool
    /**
     证书设置
     公共配置
     插件机制
     */
    [RequestTool setupPublicParameters]; //设置在所有请求前 一般放在AppDelegate 中调用
    
    CustomTabBarController *tabbar = [[CustomTabBarController alloc]init];
    
    self.window.rootViewController = tabbar;
    
    [self.window makeKeyAndVisible];

    return YES;
}


- (void)applicationDidReceiveMemoryWarning:(UIApplication*)application{  
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
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

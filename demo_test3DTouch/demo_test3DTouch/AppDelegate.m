//
//  AppDelegate.m
//  demo_test3DTouch
//
//  Created by LittleKin on 15/12/6.
//  Copyright © 2015年 LittleKin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        
    // Override point for customization after application launch.
    UIApplicationShortcutIcon *firstItemIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    
    UIMutableApplicationShortcutItem *firstItem = [[UIMutableApplicationShortcutItem alloc]initWithType:@"First" localizedTitle:@"添加" localizedSubtitle:@"页面" icon:firstItemIcon userInfo:nil];
    
    UIApplicationShortcutIcon *secondItemIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeShare];
    UIMutableApplicationShortcutItem *secondItem = [[UIMutableApplicationShortcutItem alloc]initWithType:@"Second" localizedTitle:@"分享" localizedSubtitle:nil icon:secondItemIcon userInfo:nil];
    
    UIApplicationShortcutIcon *threeItemIcon =[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeSearch];
    UIMutableApplicationShortcutItem *threeItem = [[UIMutableApplicationShortcutItem alloc]initWithType:@"Three" localizedTitle:@"搜索" localizedSubtitle:nil icon:threeItemIcon userInfo:nil];
    
    application.shortcutItems = @[firstItem,secondItem,threeItem];
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

#pragma mark - 3DTouchEvent
-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    
    if ([shortcutItem.type isEqual:@"First"]) {
        
        NSLog(@"执行添加事件");
        
    }else if([shortcutItem.type isEqual:@"Second"]){
        
        NSLog(@"执行分享的操作 ");
        
    }
}
@end

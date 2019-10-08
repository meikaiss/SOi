//
//  AppDelegate.m
//  SOi
//
//  Created by meikai on 2019/10/8.
//  Copyright © 2019 meikai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


-(void)redirectConsoleLog{
#ifdef DEBUG
    NSString *documentDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSLog(@"documentPath : %@",documentDir);
    
    //重定向NSLog
    NSString* logPath = [documentDir stringByAppendingPathComponent:@"console.log"];
    freopen([logPath fileSystemRepresentation], "a+", stderr);
#endif
}


/**
 当应用程序启动时执行，应用程序启动入口，只在应用程序启动时执行一次。若用户直接启动，lauchOptions内无数据,若通过其他方式启动应用，lauchOptions包含对应方式的内容。
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
     [self redirectConsoleLog];
    
        NSLog(@"iOS_didFinishLaunchingWithOptions");

    return YES;
}


#pragma mark - UISceneSession lifecycle

/**
 在应用程序将要由活动状态切换到非活动状态时候，要执行的委托调用，如 按下 home 按钮，返回主屏幕，或全屏之间切换应用程序等
 */
- (void)applicationWillResignActive:(UIApplication *)application{
    NSLog(@"iOS_applicationWillResignActive");
}

/**
 在应用程序已进入后台程序时，要执行的委托调用
 */
- (void)applicationDidEnterBackground:(UIApplication *)application{
    NSLog(@"iOS_applicationDidEnterBackground");
}

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end

//
//  AppDelegate.m
//  07-18-NightWork-02
//
//  Created by 张增强 on 16/7/18.
//  Copyright © 2016年 张增强. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.seconde = 0;
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    
    [self createMiaoBiao];
    
    [self.window makeKeyAndVisible];
    
    // Override point for customization after application launch.
    return YES;
}

-(void)createMiaoBiao{
    _seconde = 0;
    CGRect rect = [UIScreen mainScreen].bounds;
    self.time = [[UILabel alloc] initWithFrame:CGRectMake(20, rect.size.height/3, rect.size.width-40, 50)];
    self.time.backgroundColor = [UIColor grayColor];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(myTime) userInfo:nil repeats:YES];
    self.time.text = @"00:00:00";
    self.time.textAlignment = NSTextAlignmentCenter;
    [self.window addSubview:self.time];
}

-(void)myTime{
    _seconde++;
    NSString * str = [NSString stringWithFormat:@"%02ld: %02ld: %02ld", _seconde/100/60%60, _seconde/100%60, _seconde%100];
    self.time.text = str;
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

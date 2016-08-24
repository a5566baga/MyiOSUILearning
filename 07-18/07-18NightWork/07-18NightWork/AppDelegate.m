//
//  AppDelegate.m
//  07-18NightWork
//
//  Created by 张增强 on 16/7/18.
//  Copyright © 2016年 张增强. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor grayColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    [self create9x9];
    // Override point for customization after application launch.
    return YES;
}

-(void)create9x9{
    for (NSInteger i = 1; i <= 9; i++) {
        for (NSInteger j = 1 ; j <= i; j++) {
            UILabel * lable = [[UILabel alloc] init];
            lable.frame = CGRectMake(10 + 44*(j-1), 20 + 35*i, 40, 17);
            lable.text = [NSString stringWithFormat:@"%ldx%ld=%ld", j, i, i*j];
            lable.font = [UIFont systemFontOfSize:10];
            lable.textAlignment = NSTextAlignmentCenter;
            lable.backgroundColor = [UIColor blueColor];
            lable.layer.borderWidth = 2;
            lable.layer.borderColor = [[UIColor blackColor] CGColor];
            lable.adjustsFontSizeToFitWidth = YES;
            [self.window addSubview:lable];
            printf("%ld*%ld=%ld ", i, j, i*j);
        }
    }
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

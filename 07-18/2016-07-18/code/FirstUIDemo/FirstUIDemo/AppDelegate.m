//
//  AppDelegate.m
//  FirstUIDemo
//
//  Created by 张永刚 on 16/7/18.
//  Copyright © 2016年 YG. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



//-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
//    
//    NSLog(@"%s",__func__);
//
//    return YES;
//}

//command+shift+K清除缓存。
//iOS程序界面能够显示在手机上的最主要的一个方法。
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1.UIWindow是iOS程序界面显示到手机上的一主要对象。
    //2.要保证Window对象的生命周期和应用程序一样，就应该把window设置成一个“全局”的变量(属性并要strong)。
    _window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    //以创建一个结构体通常，结构体名Make;
//    window.frame = CGRectMake(0, 0, 320, 568);
    //自动获取手机宽高。bounds他的x,y永远是（0，0）
//   CGRect rect = [[UIScreen mainScreen]bounds];
//    NSLog(@"%@",NSStringFromCGRect(window.frame));
    
    self.window.backgroundColor = [UIColor purpleColor];
    
    //给window设置根控制器，现在只作了解，以后深入明说。
    self.window.rootViewController = [[UIViewController alloc]init];
    
    //调用创建label的方法。
    [self createLabel];
    //方法的作用是把window设置成应用程序的keyWindow,并且显示。
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

-(void)createLabel{
    
    UILabel * label = [[UILabel alloc]init];
    //Frame(x,y)是确定控件（组件）位置，（width,height)是确定控件的大小。
    label.frame = CGRectMake(100, 100, 150, 50);
    label.text = @"this is a label!";
    
    //把label加载到window上。给window添加子视图view.
    [self.window addSubview:label];
    
    
    //中午：1、熟记应用程序的生命周期。
//         2、创建一个label添加“天道酬勤”背景颜色棕色。字体颜色。
    
    
    
}


/**
 *  应用将进入非活动状态。
 */

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    NSLog(@"%s",__func__);
}
/**
 *  应用程序已经进入后台。
 *
 */
- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    NSLog(@"%s",__func__);
}
//应用程序将进入活动状态。
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSLog(@"%s",__func__);
}

/**
 *  程序已经进入活动状态。
 */
- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"%s",__func__);
}
/**
 *  应用程序结束时会调用些方法。
 *
*/
- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"%s",__func__);
}

//当内存警告，会调用些方法。不一会使用应用程序停止执行。
-(void)applicationDidReceiveMemoryWarning:(UIApplication *)application{
    
}

@end

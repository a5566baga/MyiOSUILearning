//
//  AppDelegate.m
//  FlyLabel
//
//  Created by 张永刚 on 16/7/18.
//  Copyright © 2016年 YG. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

//定时器。
@property(nonatomic, strong)NSTimer * timer;

@end

@implementation AppDelegate

- (void)dealloc
{
    
    [self.timer invalidate];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    self.window.rootViewController = [[UIViewController alloc]init];
    
    self.window.backgroundColor = [UIColor lightGrayColor];
    [self.window makeKeyAndVisible];
    
    [self createLabel];
    [self createTimer];
    return YES;
}


-(void)createTimer{
    
    //这nstimeInterval单位是秒。
    //每隔多少秒执行，target参数对象，的selector方法  repeats是否可以重复。
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(flyFuncation) userInfo:nil repeats:YES];
    
}


-(void)flyFuncation{
   
    static NSInteger x = 1, y = 1;
    //viewWithTag这方法是通过tag获取视图上子视图的方法。
   UILabel * label = (UILabel *)[self.window viewWithTag:100];
    
    CGRect rect = label.frame;
    
    rect.origin.x += x;
    rect.origin.y += y;
    CGSize size = [UIScreen mainScreen].bounds.size;
    if (rect.origin.x>=size.width-rect.size.width) {
        //减一
        x = -1;
    }else if (rect.origin.x<=0){
      //加1
        x = 1;
    }
    
    if (rect.origin.y>=size.height-rect.size.height) {
        //减一
        y = -1;
    }else if (rect.origin.y<=0){
        //加1
       y += 1;
    }
    
    
    /**
     * 
     if (rect.origin.x>=size.width-rect.size.width||rect.origin.x<=0) {
     //减一
     x *= -1;
     }
     if (rect.origin.y>=size.height-rect.size.height||rect.origin.y<=0) {
     //减一
     y *= -1;
     }
     *
     *  @since <#version number#>
     */
    
    
    label.frame = rect;
    
    
    
    
}

-(void)createLabel{
    
    //状态栏高度为20.
    UILabel * flyLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, 100, 50)];
    
    //设置label的tag值，注：一定不可以对不同的view设置相同的tag的值。
    flyLabel.tag = 100;
    
    flyLabel.backgroundColor = [UIColor yellowColor];
    
    flyLabel.text = @"fly label";
    
    flyLabel.textColor = [UIColor greenColor];
    
    flyLabel.textAlignment = NSTextAlignmentCenter;
    
    flyLabel.adjustsFontSizeToFitWidth = YES;
    
    flyLabel.layer.borderWidth = 5.0;
    flyLabel.layer.borderColor = [[UIColor orangeColor]CGColor];
    
    
    [self.window addSubview:flyLabel];
    
    
    
    
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

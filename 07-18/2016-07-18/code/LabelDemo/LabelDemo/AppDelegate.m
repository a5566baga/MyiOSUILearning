//
//  AppDelegate.m
//  LabelDemo
//
//  Created by 张永刚 on 16/7/18.
//  Copyright © 2016年 YG. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    self.window.backgroundColor = [UIColor lightGrayColor];
    
    self.window.rootViewController = [[UIViewController alloc]init];
    
    //这个方法是把window设置成主要keywindow;
//    [self.window makeKeyWindow];
    //把window设置成keywindow并且显示。
    [self.window makeKeyAndVisible];
    
    [self createLabel];
    
    return YES;
}


-(void)createLabel{
    
    UILabel * label = [[UILabel alloc]init];
    
    label.frame = CGRectMake(100.0, 100.0, 150.0, 125.0);
    //给label设置文本内容。
    label.text = @"I am a label, I can setting text!";
    //给window添加子视图
    [self.window addSubview:label];
    //设置背影颜色
    label.backgroundColor = [UIColor brownColor];
    
    //设置文体的颜色
    label.textColor = [UIColor greenColor];
    //设置字体的大小
    
    label.font = [UIFont systemFontOfSize:30];
    //字体加粗
    label.font = [UIFont boldSystemFontOfSize:30.0];
    //字体倾斜
    label.font = [UIFont italicSystemFontOfSize:30.0];
    
    //设置字体的样式。
    //如何添加字库：
    /**
     *  1、把字库存添加到工程
     *  2、修改info.plist文件，添加Fonts provided by application选项。把字库文件添加到该数组中。
     *
     */
    label.font = [UIFont fontWithName:@"StencilStd" size:30];
    //可以获取系统支持的文字样式。
//    NSLog(@"%@",[UIFont familyNames]);
    
    //对齐方式
//    label.textAlignment = UITextAlignmentLeft  //以前使用这种方式。
    //右对齐
    label.textAlignment = NSTextAlignmentRight;
    //左对齐
    label.textAlignment = NSTextAlignmentLeft;
    //距中对齐。
    label.textAlignment = NSTextAlignmentCenter;
    
    //会自动调整文字大小，
//    label.adjustsFontSizeToFitWidth = YES;
    //调整显示行数.
    //注：如果设置的俱体多少行，就是多少行。如果写0,那么是表示多行显示。
    label.numberOfLines = 0;
    
    //显示阴影
//    label.shadowOffset = CGSizeMake(5, 5);
//    label.shadowColor = [UIColor purpleColor];
//
    //设置换行
    /**
     NSLineBreakByWordWrapping = 0,  //以单词为单位进行换行，多余的内容不显示
     NSLineBreakByCharWrapping,	//以字符为单位进行换行，多余的内容不显示
     NSLineBreakByClipping,		// 除最后一行，都是以单词为单位进行换行，自然显示。
     NSLineBreakByTruncatingHead,	// 如果内容显示不完成最后一行以...开头。
     NSLineBreakByTruncatingTail,	// 如果内容显示不完成最后一行以...结束
     NSLineBreakByTruncatingMiddle	// 如果内容显示不完成最后一行以...连接文本内容。

     */
    label.lineBreakMode = NSLineBreakByTruncatingMiddle;
    
    //设置边框的颜色。
    label.layer.borderColor = [[UIColor whiteColor]CGColor];
    //设置边框的宽度
    label.layer.borderWidth = 5.0;
    //设置圆角
    label.layer.cornerRadius = 5;
    
    label.clipsToBounds = YES;
    
    
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

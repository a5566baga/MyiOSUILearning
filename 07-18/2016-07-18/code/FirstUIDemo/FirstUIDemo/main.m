//
//  main.m
//  FirstUIDemo
//
//  Created by 张永刚 on 16/7/18.
//  Copyright © 2016年 YG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
//        NSLog(@"%@",NSStringFromClass([UIApplication class])) ;
//        NSClassFromString(<#NSString * _Nonnull aClassName#>)
        
        
        
//        UIApplicationMain在应用程序时主动的调用此方法，让程序主动去调用AppDelegate的方法。
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
        
        //它们是主函数的参数，argc,argv我们不用去观注。
        //第三个参数应该传入className类名：（是UIApplication的类名，或者是他的子类名）如传入的是nil默认传入的是UIApplication的类名。
//        UIApplication对象是检测iOS程序运行的状态。
        
        //第四个参数：appDelegate是UIApplication的代理，如果UIApplication对象检测到应用程序不同状态，会委托AppDelegate调用方法。
        
        
    }
}

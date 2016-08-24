//
//  AppDelegate.h
//  07-18-NightWork-02
//
//  Created by 张增强 on 16/7/18.
//  Copyright © 2016年 张增强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic, strong) NSTimer * timer;

@property(nonatomic, assign) NSInteger seconde;

@property(nonatomic, strong) UILabel * time;

@end


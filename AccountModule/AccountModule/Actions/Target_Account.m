//
//  Target_Account.m
//  AccountModule
//
//  Created by Cai Cai on 2019/8/25.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "Target_Account.h"
#import "AccountLoginViewController.h"
#import "AccountRegisterViewController.h"
#import "AccountUserService.h"

@implementation Target_Account
/**
 *登录
 **/
- (UIViewController *)Action_nativeLoginViewController {
    return [[AccountLoginViewController alloc] init];
}
/**
 *登陆状态
 **/
- (BOOL)Action_nativeLoginStatus {
    return [AccountUserService sharedService].isLogin;
}
/**
 *登陆状态改变
 **/
- (NSString *)Action_nativeLoginStatusChangeNotificationName {
    return LoginStatusChangeNotificationName;
}

@end

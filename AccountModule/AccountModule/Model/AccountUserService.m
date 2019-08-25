//
//  AccountUserService.m
//  AccountModule
//
//  Created by Cai Cai on 2019/8/25.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "AccountUserService.h"

NSString * const LoginStatusChangeNotificationName = @"LoginStatusChangeNotificationName";

@implementation AccountUserService

+ (AccountUserService *)sharedService {
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)setLogin:(BOOL)login {
    _login = login;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:LoginStatusChangeNotificationName object:nil];
}

@end

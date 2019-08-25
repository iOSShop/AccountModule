//
//  AccountUserService.h
//  AccountModule
//
//  Created by Cai Cai on 2019/8/25.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString * const LoginStatusChangeNotificationName;

@interface AccountUserService : NSObject
+ (AccountUserService *)sharedService;
@property (nonatomic, assign, getter=isLogin, setter=setLogin:) BOOL login;
@end

NS_ASSUME_NONNULL_END

//
//  AccountRegisterViewController.m
//  AccountModule
//
//  Created by Cai Cai on 2019/8/25.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "AccountRegisterViewController.h"

@interface AccountRegisterViewController ()
@property (nonatomic, strong) UITextField *userNameTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property (nonatomic, strong) UIButton *registerButton;
@end

@implementation AccountRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"注册";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.userNameTextField];
    [self.view addSubview:self.passwordTextField];
    [self.view addSubview:self.registerButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGFloat instance = 20;
    CGFloat h = 50;
    
    self.userNameTextField.frame = CGRectMake(instance, 150, self.view.bounds.size.width - instance * 2, h);
    self.passwordTextField.frame = CGRectMake(self.userNameTextField.frame.origin.x, CGRectGetMaxY(self.userNameTextField.frame) + 20, self.userNameTextField.bounds.size.width, self.userNameTextField.bounds.size.height);
    self.registerButton.frame = CGRectMake(self.userNameTextField.frame.origin.x, CGRectGetMaxY(self.passwordTextField.frame) + 20, self.userNameTextField.bounds.size.width, self.userNameTextField.bounds.size.height);
}

- (UITextField *)userNameTextField {
    if (_userNameTextField == nil) {
        _userNameTextField = [[UITextField alloc] init];
        _userNameTextField.keyboardType = UIKeyboardTypeASCIICapable;
        _userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _userNameTextField;
}

- (UITextField *)passwordTextField {
    if (_passwordTextField == nil) {
        _passwordTextField = [[UITextField alloc] init];
        _passwordTextField.secureTextEntry = YES;
        _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _passwordTextField;
}

- (UIButton *)registerButton {
    if (_registerButton == nil) {
        _registerButton = [[UIButton alloc] init];
        [_registerButton setTitle:@"注册" forState:UIControlStateNormal];
        _registerButton.backgroundColor = [UIColor blueColor];
    }
    return _registerButton;
}

@end

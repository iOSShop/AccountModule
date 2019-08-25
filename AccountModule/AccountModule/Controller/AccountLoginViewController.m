//
//  AccountLoginViewController.m
//  AccountModule
//
//  Created by Cai Cai on 2019/8/25.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "AccountLoginViewController.h"
#import "AccountRegisterViewController.h"
#import "AccountUserService.h"

@interface AccountLoginViewController ()
@property (nonatomic, strong) UITextField *userNameTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property (nonatomic, strong) UIButton *loginButton;
@end

@implementation AccountLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"登陆";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注册" style:UIBarButtonItemStyleDone target:self action:@selector(clickRegister)];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.userNameTextField];
    [self.view addSubview:self.passwordTextField];
    [self.view addSubview:self.loginButton];
}

- (void)clickLogin {
    
    [[AccountUserService sharedService] setLogin:YES];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"登陆成功" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)clickRegister {
    AccountRegisterViewController *registerViewController = [[AccountRegisterViewController alloc] init];
    [self.navigationController pushViewController:registerViewController animated:YES];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGFloat instance = 20;
    CGFloat h = 50;
    
    self.userNameTextField.frame = CGRectMake(instance, 150, self.view.bounds.size.width - instance * 2, h);
    self.passwordTextField.frame = CGRectMake(self.userNameTextField.frame.origin.x, CGRectGetMaxY(self.userNameTextField.frame) + 20, self.userNameTextField.bounds.size.width, self.userNameTextField.bounds.size.height);
    self.loginButton.frame = CGRectMake(self.userNameTextField.frame.origin.x, CGRectGetMaxY(self.passwordTextField.frame) + 20, self.userNameTextField.bounds.size.width, self.userNameTextField.bounds.size.height);
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

- (UIButton *)loginButton {
    if (_loginButton == nil) {
        _loginButton = [[UIButton alloc] init];
        [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
        _loginButton.backgroundColor = [UIColor blueColor];
        [_loginButton addTarget:self action:@selector(clickLogin) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginButton;
}

@end

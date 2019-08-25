//
//  ViewController.m
//  AccountModule
//
//  Created by Cai Cai on 2019/8/25.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "ViewController.h"
#import "AccountLoginViewController.h"
#import "AccountUserViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clickButton:(id)sender {
//    AccountLoginViewController *loginViewController = [[AccountLoginViewController alloc] init];
//    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:loginViewController] animated:YES completion:nil];
    
    AccountUserViewController *userViewController = [[AccountUserViewController alloc] init];
    self.view.window.rootViewController = userViewController;
}

@end

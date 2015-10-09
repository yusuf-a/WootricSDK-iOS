//
//  ViewController.m
//  WootricSDK-Demo
//
//  Created by Łukasz Cichecki on 17/08/15.
//  Copyright (c) 2015 Wootric. All rights reserved.
//

#import "ViewController.h"
@import WootricSDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor colorWithRed:58.0/255.0 green:57.0/255.0 blue:57.0/255.0 alpha:1];

  NSString *clientID = @"YOUR_CLIENT_ID";
  NSString *clientSecret = @"YOUR_CLIENT_SECRET";
  NSString *accountToken = @"YOUR_ACCOUNT_TOKEN";

  [WootricSDK configureWithClientID:clientID clientSecret:clientSecret accountToken:accountToken];
  [WootricSDK setEndUserEmail:@"END_USER_EMAIL"];
  [WootricSDK setEndUserCreatedAt:@1234567890];
  [WootricSDK forceSurvey:YES];

  [WootricSDK showSurveyInViewController:self];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end

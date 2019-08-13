//
//  RGViewController.m
//  RGTool
//
//  Created by 18607304107@163.com on 08/13/2019.
//  Copyright (c) 2019 18607304107@163.com. All rights reserved.
//

#import "RGViewController.h"
#import "BaseToolHeader.h"

@interface RGViewController ()

@end

@implementation RGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSString *version = [ProjectTool getAppVersion];
    NSLog(@"version = %@",version);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

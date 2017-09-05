//
//  ThirdViewController.m
//  UIElements
//
//  Created by maxud on 05.09.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (IBAction)BackAction:(UIButton *)sender
{
    
    NSArray *viewControllers = self.navigationController.viewControllers;
    UIViewController *firstVC = viewControllers[1];
    
    [self.navigationController popToViewController:firstVC animated:YES];
}


@end

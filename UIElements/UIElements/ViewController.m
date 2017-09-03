//
//  ViewController.m
//  UIElements
//
//  Created by maxud on 01.09.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "ViewController.h"
typedef  struct
{
    CGFloat weight;
    NSUInteger age;
} Pearson;
@interface ViewController ()<UITextFieldDelegate ,UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;

@end

@implementation ViewController

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    NSString *someString =  @"I will be IOS developer";
    
    NSRange range = NSMakeRange(2,4 );
    
    NSString *resultString = [someString substringWithRange:range];
    
    
    
    Pearson pearson;
    pearson.age = 20;
    pearson.weight = 76;
    
    if (textField.tag ==5)
    {
    CGRect fieldFrame = textField.frame;
    
        fieldFrame.origin.y= self.EmailTextField.frame.origin.y + self.EmailTextField.frame.size.height + 40;
    
    textField.frame = fieldFrame;
    }
    NSLog(@"\ntextFieldDidBeginEditing\n");
    if (textField.tag ==5)
    {
        textField.secureTextEntry = YES;
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"\ntextFieldDidEndEditing\n");
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"\ntextFieldShouldReturn\n");
    if (textField.tag == 5)
    {
        [self.EmailTextField becomeFirstResponder];
    }
    else{
        [self.PasswordTextField becomeFirstResponder];
    }
    return YES;
}

- (BOOL) textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"\ntextFieldShouldEndEditing\n");
    if (textField.text.length < 5)
    {
        return NO;
    }
    return YES;
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    NSLog(@"\ntextFieldShouldBeginEditing\n");
//    if (textField.tag == 5)
//    {
//        if (self.EmailTextField.text.length < 5)
//        {
//            return NO;
//        }
//    }
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"\nshouldChangeCharactersInRange\n");
    
    if ([string isEqualToString:@"+"])
    {
        return NO;
    }
    
    
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    return YES;
}

@end

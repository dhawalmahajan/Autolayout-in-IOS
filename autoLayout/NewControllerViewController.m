//
//  NewControllerViewController.m
//  autoLayout
//
//  Created by Dhawal Mahajan on 20/01/18.
//  Copyright © 2018 Dhawal Mahajan. All rights reserved.
//

#import "NewControllerViewController.h"

@interface NewControllerViewController ()

@end

@implementation NewControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) textFieldDidBeginEditing:(UITextField *)textField {
    if (textField == _firstTextField) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.3];
        [UIView setAnimationBeginsFromCurrentState:YES];
        CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y - 230);
        [_scrollPage setContentOffset:scrollPoint animated:YES];
        
//  _firstTextField.frame = CGRectMake(_firstTextField.frame.origin.x, _firstTextField.frame.origin.y - 271.0, _firstTextField.frame.size.width, _firstTextField.frame.size.height);
        [_firstTextField becomeFirstResponder];
    }
}
- (void) textFieldDidEndEditing:(UITextField *)textField {
    if (textField == _firstTextField) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.3];
        [UIView setAnimationBeginsFromCurrentState:YES];
//        CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y - 230);
        [_scrollPage setContentOffset:CGPointZero animated:YES];
//        [_firstTextField resignFirstResponder];
//        _firstTextField.frame = CGRectMake(_firstTextField.frame.origin.x, _firstTextField.frame.origin.y + 271.0, _firstTextField.frame.size.width, _firstTextField.frame.size.height);
      
    }
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {

    [_firstTextField resignFirstResponder];
    
    return YES;
}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_firstTextField resignFirstResponder];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

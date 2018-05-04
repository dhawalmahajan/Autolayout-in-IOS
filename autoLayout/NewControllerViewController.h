//
//  NewControllerViewController.h
//  autoLayout
//
//  Created by Dhawal Mahajan on 20/01/18.
//  Copyright © 2018 Dhawal Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface NewControllerViewController : ViewController <UIScrollViewDelegate,UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollPage;
@property (strong, nonatomic) IBOutlet UITextField *firstTextField;

@end

//
//  ViewController.m
//  autoLayout
//
//  Created by Dhawal Mahajan on 13/01/18.
//  Copyright © 2018 Dhawal Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize firstImage, secondImage;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
}
- (void) viewDidUnload {
    
    self.firstImage = nil;
    self.secondImage = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
//        return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return YES;
}
- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
        toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        
        firstImage.frame = CGRectMake(259, 31, 50, 50);
        secondImage.frame = CGRectMake(259, 260, 50, 50);
    
    } else {
        
        firstImage.frame = CGRectMake(135, 60, 50, 50);
        secondImage.frame = CGRectMake(135, 498, 50, 50);
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

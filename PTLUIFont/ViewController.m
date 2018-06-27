//
//  ViewController.m
//  PTLUIFont
//
//  Created by Roc on 2018/6/27.
//  Copyright © 2018年 PTLCoder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.font = [UIFont systemFontOfSize:17];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

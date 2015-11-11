//
//  ViewController.m
//  长按按钮Demo
//
//  Created by 孙云 on 15/11/11.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet MyButton *activeBtn;
- (IBAction)click:(MyButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(MyButton *)sender {
    NSLog(@"你好");
}
@end

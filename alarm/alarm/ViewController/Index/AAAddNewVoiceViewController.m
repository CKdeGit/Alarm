//
//  AAAddNewVoiceViewController.m
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import "AAAddNewVoiceViewController.h"

@interface AAAddNewVoiceViewController ()

@end

@implementation AAAddNewVoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"新增录音";
    
    
    _viewModel = [[AAAddNewVoiceViewModel alloc] initWithViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

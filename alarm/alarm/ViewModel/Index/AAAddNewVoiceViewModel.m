//
//  AAAddNewVoiceViewModel.m
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import "AAAddNewVoiceViewModel.h"
#import "AAAddNewVoiceViewController.h"

@implementation AAAddNewVoiceViewModel


- (instancetype)initWithViewController:(UIViewController *)viewController{
    self = [super initWithViewController:viewController];
    if (self) {
        self.viewController = (AAAddNewVoiceViewController *)viewController;
    }
    return self;
}
@end

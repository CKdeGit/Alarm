//
//  AAMyVoiceViewModel.m
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import "AAMyVoiceViewModel.h"
#import "AAMyVoiceViewController.h"

@implementation AAMyVoiceViewModel


- (instancetype)initWithViewController:(UIViewController *)viewController{
    self = [super initWithViewController:viewController];
    if (self) {
        self.viewController = (AAMyVoiceViewController *)viewController;
    }
    return self;
}
@end

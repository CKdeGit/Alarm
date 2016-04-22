//
//  AAEditAlarmViewModel.m
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import "AAEditAlarmViewModel.h"
#import "AAEditAlarmViewController.h"

@implementation AAEditAlarmViewModel


- (instancetype)initWithViewController:(UIViewController *)viewController{
    self = [super initWithViewController:viewController];
    if (self) {
        self.viewController = (AAEditAlarmViewController *)viewController;
    }
    return self;
}
@end

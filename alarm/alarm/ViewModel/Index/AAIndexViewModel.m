//
//  AAIndexViewModel.m
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import "AAIndexViewModel.h"
#import "AAIndexViewController.h"

@implementation AAIndexViewModel


- (instancetype)initWithViewController:(UIViewController *)viewController{
    self = [super initWithViewController:viewController];
    if (self) {
        self.viewController = (AAIndexViewController *)viewController;
    }
    return self;
}
@end

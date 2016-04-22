//
//  SCViewModel.m
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import "SCViewModel.h"

@implementation SCViewModel


- (instancetype)initWithViewController:(UIViewController *)viewController{
    self = [super init];
    if (self) {
        self.viewController = viewController;
    }
    return self;
}

- (void)setBlockWithreturnBlock:(ReturnValueBlock)returnBlock withErrorBlock:(ErrorCodeBlock)errorBlock withFailureBlock:(FailureBlock)failureBlock{
    self.returnBlock = returnBlock;
    self.errorBlock = errorBlock;
    self.failureBlock = failureBlock;
}

- (void)errorWithDic:(NSDictionary *)error{
    self.errorBlock(error);
}

- (void)netFailure{
    self.failureBlock();
}
@end

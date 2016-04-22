//
//  SCViewModel.h
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCViewModel : NSObject

@property(strong,nonatomic) UIViewController *viewController;
@property(strong,nonatomic) ReturnValueBlock returnBlock;
@property(strong,nonatomic) ErrorCodeBlock errorBlock;
@property(strong,nonatomic) FailureBlock failureBlock;
/**
 *  初始化
 *
 *  @param viewController 视图控制器
 *
 *  @return
 */
- (instancetype)initWithViewController:(UIViewController *)viewController;
/**
 *  设置代理
 *
 *  @param returnBlock  返回数据
 *  @param errorBlock   错误
 *  @param failureBlock 网络失败
 */
- (void)setBlockWithreturnBlock:(ReturnValueBlock)returnBlock withErrorBlock:(ErrorCodeBlock)errorBlock withFailureBlock:(FailureBlock)failureBlock;
/**
 *  请求错误代理
 *
 *  @param error 错误信息
 */
- (void)errorWithDic:(NSDictionary *)error;
/**
 *  网络请求失败代理
 */
- (void)netFailure;

@end

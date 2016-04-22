//
//  SCNavigationController.m
//  alarm
//
//  Created by 陈凯 on 16/4/22.
//  Copyright © 2016年 陈凯. All rights reserved.
//

#import "SCNavigationController.h"
#import "RDVTabBarController.h"
#import "AAIndexViewController.h"

@interface SCNavigationController ()

@end

@implementation SCNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//第一次调用类时加载一次
+ (void)initialize{
    //设置navigationbar主题
    [self setNavigationBarTheme];
    //设置UIBarButtonItem主题
    [self setBarButtonItemTheme];
}


//设置navigationbar主题
+ (void)setNavigationBarTheme{

    UINavigationBar *appearance = [UINavigationBar appearance];
    
    //导航栏背景色
    appearance.barTintColor = [UIColor colorWithHexString:@"12b7f5"];//浅蓝色
    //导航栏样式
    appearance.barStyle = UIBarStyleBlackTranslucent;//透明黑色背景
    //设置文字属性
    NSMutableDictionary *textAttr = [[NSMutableDictionary alloc] init];
    textAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];//文字颜色
    textAttr[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17.0f];//字体
     // UIOffsetZero是结构体, 只要包装成NSValue对象, 才能放进字典\数组中
    //textAttr[NSShadowAttributeName] = [NSValue valueWithUIOffset:UIOffsetZero];//阴影
    [appearance setTitleTextAttributes:textAttr];
}




//设置navigationitem主题
+ (void)setBarButtonItemTheme{
    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    /**设置文字属性**/
    // 设置普通状态的文字属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    //    textAttrs[NSShadowAttributeName] = [NSValue valueWithUIOffset:UIOffsetZero];
    [appearance setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置高亮状态的文字属性
    NSMutableDictionary *highTextAttrs = [NSMutableDictionary dictionaryWithDictionary:textAttrs];
    highTextAttrs[NSForegroundColorAttributeName] = [UIColor redColor];
    [appearance setTitleTextAttributes:highTextAttrs forState:UIControlStateHighlighted];
    
    // 设置不可用状态(disable)的文字属性
    NSMutableDictionary *disableTextAttrs = [NSMutableDictionary dictionaryWithDictionary:textAttrs];
    disableTextAttrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [appearance setTitleTextAttributes:disableTextAttrs forState:UIControlStateDisabled];
    
    //按钮背景
    //为了让某个按钮完全消失，可以用一张透明的图片做背景
    [appearance setBackgroundImage:[UIImage imageNamed:@"navigation_barbuttonimg"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
}

/**
 *  子控制器push进来时执行
 *
 *  @param viewController
 *  @param animated
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        //此项目未使用tabbar
        
        //不是首页的话，导航栏隐藏
        
//        if (![viewController isKindOfClass:[AAIndexViewController class]]) {
//            [[self rdv_tabBarController] setTabBarHidden:YES animated:NO];
//        }
        //隐藏返回按钮
        [self.navigationItem setHidesBackButton:YES];
        //右侧按钮，当返回用
        self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigation_barbuttonimg" highImageName:@"navigation_barbuttonimg" target:self action:@selector(back)];
        
        self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigation_barbuttonimg" highImageName:@"navigation_barbuttonimg" target:self action:@selector(more)];
    }
    [super pushViewController:viewController animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    UIViewController *viewController = [super popViewControllerAnimated:animated];
//    NSArray *array = self.viewControllers;
//    if(array.count>1){
//        UIViewController *destinationviewController = array[1];
//        if([destinationviewController isKindOfClass:[AAIndexViewController class]]){
//            [[destinationviewController rdv_tabBarController] setTabBarHidden:NO animated:NO];
//        }else{
//            [[destinationviewController rdv_tabBarController] setTabBarHidden:YES animated:NO];
//        }
//    }else{
//        [[viewController rdv_tabBarController] setTabBarHidden:NO animated:NO];
//    }
    
    return viewController;
}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated {
    NSArray *array = self.viewControllers;
    UIViewController *viewController = array[0];
    [[viewController rdv_tabBarController] setTabBarHidden:NO animated:NO];
    return array;
}

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    if([viewController isKindOfClass:[AAIndexViewController class]]){
//        [[viewController rdv_tabBarController] setTabBarHidden:NO animated:NO];
//    }else{
//        [[viewController rdv_tabBarController] setTabBarHidden:YES animated:NO];
//    }
    return [super popToViewController:viewController animated:animated];
}

- (void)back
{
    
    [self popViewControllerAnimated:YES];
}

- (void)more
{
    [self popToRootViewControllerAnimated:YES];
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

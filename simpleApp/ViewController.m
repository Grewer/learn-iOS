//
//  ViewController.m
//  simpleApp
//
//  Created by apple on 2020/3/17.
//  Copyright © 2020 com.grewer. All rights reserved.
//

#import "ViewController.h"

@interface TestView : UIView

@end


@implementation TestView

-(instancetype)init{
    self = [super init];
    if(self){
        
    }
    return self;
}

- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
}
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:({
        UILabel *label = [[UILabel alloc] init];
        label.text = @"hello word";
        [label sizeToFit];
        label.center = CGPointMake(100,100);
        label;
    })];
    
    TestView *view = [[TestView alloc] init];
    view.backgroundColor = [UIColor grayColor];
    // frame 表示位置
    view.frame = CGRectMake(100,200,300,400);
    [self.view addSubview:view];
    
    
//    UIView *view2 = [[UIView alloc] init];
//    view2.backgroundColor = [UIColor redColor];
//    // frame 表示位置
//    view2.frame = CGRectMake(150,250,500,400);
//    [self.view addSubview:view2];
}



@end

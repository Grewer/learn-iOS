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
    
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    
    [view addGestureRecognizer:tapGesture];

}

-(void)pushController{
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"title 标题";
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"文字按钮" style:UIBarButtonItemStyleDone target:self action:nil];
    
    [self.navigationController pushViewController:viewController animated:YES];
}

@end

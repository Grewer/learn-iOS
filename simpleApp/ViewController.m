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

@interface ViewController ()<UITableViewDataSource>

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
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
//    // frame 表示位置
//    view.frame = CGRectMake(100,200,300,400);
//    [self.view addSubview:view];
//
//
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
//
//    [view addGestureRecognizer:tapGesture];

}

//-(void)pushController{
//    // 点击跳转一个新页面
//    UIViewController *viewController = [[UIViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor whiteColor];
//    viewController.navigationItem.title = @"title 标题";
//    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"文字按钮" style:UIBarButtonItemStyleDone target:self action:nil];
//
//    [self.navigationController pushViewController:viewController animated:YES];
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:@"cus id"];
    
    cell.textLabel.text = @"主标题";
    cell.detailTextLabel.text = @"副标题";
//    cell.imageView.image = [UIImage imageNamed:@"images/play.png"]; // 在 images 文件中
    cell.imageView.image = [UIImage imageNamed:@"image1"];// 在 assets.xcassets 中
    
    
    return cell;
}


@end

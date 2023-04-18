//
//  ViewController.m
//  NSLayoutConstraint学习
//
//  Created by 翟旭博 on 2023/4/18.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // 创建父视图
    UIView *containerView = [UIView new];
    containerView.translatesAutoresizingMaskIntoConstraints = YES;
    containerView.backgroundColor = UIColor.yellowColor;
    containerView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:containerView];

    // 创建子视图
    UIView *redView = [UIView new];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    redView.backgroundColor = UIColor.redColor;
    [containerView addSubview:redView];

//    // 添加约束
//    NSArray *constraints = @[
//        // 红色视图距离父视图顶部20个点
//        [redView.topAnchor constraintEqualToAnchor:containerView.topAnchor constant:20],
//        // 红色视图距离左侧20个点
//        [redView.leadingAnchor constraintEqualToAnchor:containerView.leadingAnchor constant:20],
//        // 红色视图距离底部20个点
//        [redView.bottomAnchor constraintEqualToAnchor:containerView.bottomAnchor constant:-20],
//        // 红色视图宽度为父视图的一半
//        [redView.widthAnchor constraintEqualToAnchor:containerView.widthAnchor multiplier:0.5]
//    ];
//    [NSLayoutConstraint activateConstraints:constraints];

    // 创建约束条件：view2 距离 view1 的四周都有 20 的间距
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:redView
                                                                      attribute:NSLayoutAttributeRight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:containerView
                                                                      attribute:NSLayoutAttributeRight
                                                                     multiplier:1.0
                                                                       constant:-20];
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:redView
                                                                      attribute:NSLayoutAttributeBottom
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:containerView
                                                                      attribute:NSLayoutAttributeBottom
                                                                     multiplier:1.0
                                                                       constant:-20];
    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:redView
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:containerView
                                                                      attribute:NSLayoutAttributeLeft
                                                                     multiplier:1.0
                                                                       constant:20];
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:redView
                                                                      attribute:NSLayoutAttributeTop
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:containerView
                                                                      attribute:NSLayoutAttributeTop
                                                                     multiplier:1.0
                                                                       constant:20];

    // 将约束条件添加到视图上
    [self.view addConstraints:@[constraint1, constraint2, constraint3, constraint4]];
}


@end

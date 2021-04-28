//
//  FBDDashboard.m
//  FBDAApi
//
//  Created by LM on 2021/4/28.
//

#import <Foundation/Foundation.h>
#import "FBDDashboard.h"
#import "FBUtils.h"
#import <Masonry/Masonry.h>


@interface FBDDashboard ()
@property (assign,nonatomic) NSInteger memoryRate;

@property (assign,nonatomic) NSInteger cpuRate;

@property (strong,nonatomic) NSTimer *timer;

@property (strong,nonatomic) UILabel *cpuRateLabel;

@property (strong,nonatomic) UILabel *memoryRateLabel;


- (void)drawGraph;

@end

@implementation FBDDashboard

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadSubViews];
    }
    return self;
}

- (void)loadSubViews
{
    UIView *rectView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 200)];
    rectView.backgroundColor = [UIColor greenColor];
    UIView *roundView = [[UIView alloc]initWithFrame:CGRectMake(0, 210, 100, 100)];
    rectView.backgroundColor = [UIColor orangeColor];
    [self addSubview:rectView];
    [self addSubview:roundView];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 400, 100, 20)];
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:12];
    label.text = @"ABCDEFG";
    [self addSubview:label];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor greenColor]];
    btn.frame = CGRectMake(150, 450, 100, 40);
    [btn setTitle:@"Action" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    
    NSLog(@"FBDDashboard.loadSubViews");
}

- (void)loadData{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:5 repeats:YES block:^(NSTimer * _Nonnull timer) {
        self.cpuRateLabel.text = [NSString stringWithFormat:@"%.2f",[FBUtils getCPUUsage]];
        self.memoryRateLabel.text = [NSString stringWithFormat:@"%ld",[FBUtils getMemoryUsage]];
    }];
    [self.timer fire];
}

- (void)openDashboard
{
    
}

- (void)closeDashboard
{
    [self.timer invalidate];
}


#pragma mark  -
#pragma mark  - Action
- (void)btnAction:(id)sender{
    NSLog(@"btn action~~~~~~~");
}

- (void)dealloc{
    
}

#pragma mark  -
#pragma mark  - Private
- (void)drawGraph
{
    
}
@end

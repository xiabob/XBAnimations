//
//  ViewController.m
//  XBAnimations
//
//  Created by xiabob on 2017/8/1.
//  Copyright © 2017年 xiabob. All rights reserved.
//

#import "ViewController.h"
#import "XBAnimationFactory.h"
#import "XBAnimation.h"
#import "UIView+XBAnimation.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.redView = [[UIView alloc] init];
    self.redView.bounds = CGRectMake(0, 0, 100, 100);
    self.redView.center = self.view.center;
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    [self performAnimations];
}

- (void)performAnimations {
    CAAnimation *ani_1 = [XBAnimation moveByX:100 y:0 duration:1];
    CAAnimation *ani_2 = [XBAnimation waitForDuration:2];
    CAAnimation *ani_3 = [XBAnimation scaleTo:2 duration:3];
    CAAnimation *ani = [XBAnimation sequence:@[ani_1, ani_2, ani_3]];
    
    CAAnimation *ani_alpha = [XBAnimation fadeAlphaTo:1 duration:3];
    CAAnimation *ani_rotate = [XBAnimation rotateByAngle:M_PI duration:1];
    CAAnimation *ani_resize = [XBAnimation resizeByWidth:10 height:10 duration:2];
    
    CAAnimation *animation = [XBAnimation group:@[ani, ani_alpha, ani_rotate, ani_resize]];
    
    self.redView.alpha = 0;
    [self.redView runAnimation:animation withKey:NSStringFromSelector(@selector(performAnimations)) completion:^{
        NSLog(@">>>>>>> <<<<<<");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

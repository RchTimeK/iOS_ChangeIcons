//
//  ViewController.m
//  RCChangeIcons
//
//  Created by RongCheng on 2017/5/8.
//  Copyright © 2017年 MBRB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"--World Peace--");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self changeAppIcons];
}
- (void)changeAppIcons
{
    if ([UIApplication sharedApplication].supportsAlternateIcons) {
        NSLog(@"you can change this app's icon");
    }else{
        NSLog(@"you can not change this app's icon");
        return;
    }
    
    NSString *iconName = [[UIApplication sharedApplication] alternateIconName];
    
    if (iconName) {
        [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"set icon error: %@",error);
            }else{
                NSLog(@"Set up successfully,Press the Home key to view");
            }
        }];
    }else{
        [[UIApplication sharedApplication] setAlternateIconName:@"newIcon" completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"set icon error: %@",error);
            }else{
                NSLog(@"Set up successfully,Press the Home key to view");
            }
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

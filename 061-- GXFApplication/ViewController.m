//
//  ViewController.m
//  061-- GXFApplication
//
//  Created by 顾雪飞 on 17/4/17.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+SDWebImage.h"
#import "UIColor+extension.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor randomColor];
    
//    [self.iconView downLoadImage:@"http://www.who.int/entity/campaigns/immunization-week/2015/large-web-banner.jpg?ua=1" placeHolder:@""];
    
    [self.iconView downLoadImage:@"http://www.who.int/entity/campaigns/immunization-week/2015/large-web-banner.jpg?ua=1" placeHolder:@"" success:^(UIImage *image) {
        
        // 图片持久化处理
        
        
    } failed:^(NSError *error) {
        
        
    } progress:^(CGFloat progress) {
        
//        NSLog(@"%f", progress);
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self.progressLabel.text = [NSString stringWithFormat:@"%.2f%@", progress * 100, @"%"];
            
            if (progress > 0.95) {
                self.progressLabel.hidden = YES;
            }
            
        });
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

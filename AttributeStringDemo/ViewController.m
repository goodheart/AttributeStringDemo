//
//  ViewController.m
//  AttributeStringDemo
//
//  Created by majian on 15/9/30.
//  Copyright © 2015年 majian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * str = @"鸡腿X5";
    NSDictionary * attributeDic = @{NSFontAttributeName : [UIFont systemFontOfSize:15.0],
                         NSForegroundColorAttributeName : [UIColor orangeColor]};
    
    NSMutableAttributedString * attributedStr = [[NSMutableAttributedString alloc] initWithString:str];
    NSRange range = [str rangeOfString:@"X"];
    [attributedStr setAttributes:attributeDic range:NSMakeRange(range.location, str.length - range.location)];
    
    self.nameLabel.attributedText = attributedStr;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

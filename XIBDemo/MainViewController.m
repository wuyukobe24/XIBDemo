//
//  MainViewController.m
//  XIBDemo
//
//  Created by WangXueqi on 2017/12/23.
//  Copyright © 2017年 JingBei. All rights reserved.
//

#import "MainViewController.h"
#import "NextViewController.h"
#import "BaseView.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)buttonClick:(id)sender {

    BaseView * base = [[[NSBundle mainBundle]loadNibNamed:@"ViewXIB" owner:self options:nil] firstObject];
    base.frame = self.view.bounds;
    [self.view addSubview:base];
}

- (IBAction)nextButtonClick:(id)sender {
    
    NextViewController * next = [[NextViewController alloc]initWithNibName:@"NextViewController" bundle:nil];
    [self presentViewController:next animated:YES completion:nil];
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

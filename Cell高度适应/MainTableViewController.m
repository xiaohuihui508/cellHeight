//
//  MainTableViewController.m
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import "MainTableViewController.h"
#import "ViewController.h"



@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)tapFirstButton:(id)sender {
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
//    [self pushVC:@"AutolayoutTableViewController"];
}
- (IBAction)tapSecondButton:(id)sender {
    [self pushVC:@"CountHeightTableViewController"];
}
- (IBAction)tapThridButton:(id)sender {
    [self pushVC:@"FrameCountTableViewController"];
}
- (IBAction)tapFourthButton:(id)sender {
    [self pushVC:@"YYKitTableViewController"];
}
- (IBAction)tapFifthButton:(id)sender {
    [self pushVC:@"AsyncDisplayKitTableViewController"];
}

- (void)pushVC:(NSString *) vcName {
   UITableViewController * vc = [[NSClassFromString(vcName) alloc] init];
   [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end

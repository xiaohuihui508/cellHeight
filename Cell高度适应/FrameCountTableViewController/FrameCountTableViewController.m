//
//  FrameCountTableViewController.m
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import "FrameCountTableViewController.h"
#import "FrameLayoutTableViewCell.h"

#define CELL_REUSE_ID @"FrameLayoutTableViewCell"

@interface FrameCountTableViewController ()

@end

@implementation FrameCountTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"FrameLayoutCountHeight";
    // Do any additional setup after loading the view.
}

#pragma mark - Override Super Method
- (NSString *)getReuseIdentifier {
    return CELL_REUSE_ID;
}

@end

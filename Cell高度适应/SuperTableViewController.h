//
//  SuperTableViewController.h
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SuperTableViewCell.h"

@interface SuperTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *dataSource;
- (void)addTestData;
- (void)registerTableViewCell;
- (NSString *)getReuseIdentifier;

@end

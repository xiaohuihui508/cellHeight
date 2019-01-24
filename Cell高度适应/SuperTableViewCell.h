//
//  SuperTableViewCell.h
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestDataModel.h"
@interface SuperTableViewCell : UITableViewCell

- (void)configCellData:(TestDataModel *)model;

@end

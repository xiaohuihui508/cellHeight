//
//  DataSupport.h
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^UpdateDataSourceBlock)(NSMutableArray *dataSource);
@interface DataSupport : NSObject
- (void)setUpdataDataSourceBlock:(UpdateDataSourceBlock) updateDataBlock;
- (void)addTestData;
@end

//
//  TestDataModel.h
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestDataModel : NSObject
@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *content;

@property (nonatomic, assign) float cellHeight;
@property (nonatomic, assign) float textHeight;
@end

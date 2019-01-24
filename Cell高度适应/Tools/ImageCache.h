//
//  ImageCache.h
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageCache : NSObject
+ (instancetype)shareInstance;
- (id)getCacheImage: (NSString *)key;
@end

//
//  ImageCache.m
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import "ImageCache.h"
@interface ImageCache()

@property (nonatomic, strong) NSMutableDictionary *imageCashDic;

@end

@implementation ImageCache

+ (instancetype)shareInstance {
    static ImageCache * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ImageCache alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.imageCashDic = [[NSMutableDictionary alloc] initWithCapacity:0];
    }
    return self;
}

- (id)getCacheImage: (NSString *)key {
    id object = [self.imageCashDic objectForKey:key];
    if (object == nil) {
        object = [UIImage imageNamed:key];
        if (object != nil) {
            [self.imageCashDic setObject:object forKey:key];
        }
    }
    return object;
}



@end

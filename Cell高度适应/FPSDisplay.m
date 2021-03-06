//
//  FPSDisplay.m
//  Cell高度适应
//
//  Created by isoft on 2019/1/24.
//  Copyright © 2019 isoft. All rights reserved.
//

#import "FPSDisplay.h"

@interface  FPSDisplay ()

@property (nonatomic, strong) UILabel *displayLabel;
@property (nonatomic, strong) CADisplayLink *link;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) NSTimeInterval lastTime;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) UIFont *subFont;

@end

@implementation FPSDisplay

+ (instancetype)shareFPSDisplay {
    static FPSDisplay *shareDisplay;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareDisplay = [[FPSDisplay alloc] init];
    });
    return shareDisplay;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initDisplayLabel];
    }
    return self;
}

- (void)initDisplayLabel {
    CGRect frame = CGRectMake(SCREEN_WIDTH -100, SCREEN_HEIGHT-50, 80, 30);
    self.displayLabel = [[UILabel alloc] initWithFrame:frame];
    self.displayLabel.layer.cornerRadius = 5;
    self.displayLabel.clipsToBounds = YES;
    self.displayLabel.textAlignment = NSTextAlignmentCenter;
    self.displayLabel.userInteractionEnabled = NO;
    self.displayLabel.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.700];
    
    _font = [UIFont fontWithName:@"Menlo" size:14];
    if (_font) {
        _subFont = [UIFont fontWithName:@"Menlo" size:14];
    } else {
        _font = [UIFont fontWithName:@"Courier" size:14];
        _subFont = [UIFont fontWithName:@"Courier" size:4];
    }
    
    [self initCADisplayLink];
    
    [[UIApplication sharedApplication].keyWindow addSubview:self.displayLabel];
    
}

- (void)initCADisplayLink {
    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    [self.link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)tick:(CADisplayLink *)link {
    if (self.lastTime == 0) {    //对lastTime进行初始化
        self.lastTime = link.timestamp;
        return;
    }
    
    self.count += 1;           //记录tick在1秒内执行的次数
    NSTimeInterval delta = link.timestamp - self.lastTime;//计算本次刷新和上次更新FPS的时间间隔
    
    //大于等于1秒时， 来计算FPS
    if (delta >= 1) {
        self.lastTime = link.timestamp;
        float fps = self.count / delta; //次数 除以 时间 = FPS（次/秒）
        self.count = 0;
        [self updateDisplayLabelText:fps];
    }
}

- (void)updateDisplayLabelText:(float)fps {
    
    CGFloat progress = fps / 60.0;
    UIColor *color = [UIColor colorWithHue:0.27 * (progress - 0.2) saturation:1 brightness:0.9 alpha:1];
    self.displayLabel.text = [NSString stringWithFormat:@"%d FPS",(int)round(fps)];
    self.displayLabel.textColor = color;
    
}

- (void)dealloc {
    [_link invalidate];
}

@end

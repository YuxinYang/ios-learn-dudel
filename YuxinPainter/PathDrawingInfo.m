//
//  PathDrawingInfo.m
//  YuxinPainter
//
//  Created by 杨裕欣 on 12-2-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PathDrawingInfo.h"

@implementation PathDrawingInfo
@synthesize path = _path, fillColor = _fillColor, strokeColor = _strokeColor;

- (id)initWithPath:(UIBezierPath *)p fillColor:(UIColor *)f strokeColor:(UIColor *)s
{
    self = [super init];
    if (self != nil) {
        self.path = p;
        self.fillColor = f;
        self.strokeColor = s;
    }
    return self;
}
+ (id)pathDrawingInfoWithPath:(UIBezierPath *)p fillColor:(UIColor *)f strokeColor:(UIColor *)s
{
      return [[self alloc] initWithPath:p fillColor:f strokeColor:s];
}


- (void)draw 
{
    if (self.fillColor) {
        [self.fillColor setFill];
        [self.path fill];
    }
    if (self.strokeColor) {
        [self.strokeColor setStroke];
        [self.path stroke];
    }
}
@end

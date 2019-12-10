//
//  AvatarUIView.m
//  SOi
//
//  Created by meikai on 2019/12/10.
//  Copyright © 2019 meikai. All rights reserved.
//

#import "AvatarUIView.h"

@implementation AvatarUIView{
    int _curX;
    int _curY;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint lastTouch = [touch locationInView:self];
    _curX = lastTouch.x;
    _curY = lastTouch.y;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);
    CGContextFillEllipseInRect(ctx, CGRectMake(_curX - 10, _curY - 10, 20, 20));
}

@end

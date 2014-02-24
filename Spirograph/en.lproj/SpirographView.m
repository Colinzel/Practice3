//
//  SpirographView.m
//  Spirograph
//
//  Created by TRUM147 iMac1 on 2/23/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "SpirographView.h"

@implementation SpirographView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{

    CGFloat x,y;
    UIBezierPath *bz = [[UIBezierPath alloc] init];
    CGFloat t=0.0;
    CGFloat self.k=0.5;
    CGFloat R=120;
    CGFloat self.l=0.5;
   
    x = R*((1 - self.k)*cos(t) + self.l * self.k*cos((1-k)/k)*t) + 140;
    y = R*((1 - self.k)*sin(t) + l * k*sin((1-k)/k)*t) + 140;
    
    CGPoint p=CGPointMake(x, y);
    [bz moveToPoint:p];
    for (t=0; t<100; t=t+.01) {
        x=R*((1 - k)*cos(t) + l * k*cos((1-k)/k)*t) + 140;
        y=R*((1 - k)*sin(t) + l * k*sin((1-k)/k)*t) + 140;
        p=CGPointMake(x, y);
        [bz addLineToPoint:p];
    }
    [bz stroke];

    
    
    
}


@end

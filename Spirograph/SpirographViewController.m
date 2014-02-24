//
//  SpirographViewController.m
//  Spirograph
//
//  Created by Michael Toth on 2/20/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "SpirographViewController.h"
#import "SpirographView.h"

@interface SpirographViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation SpirographViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.spirographView.l = .45;
    self.spirographView.k = .55;
    self.spirographView.numberOfSteps = 2000;
    self.spirographView.stepSize = 0.2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews{
    _scrollView.contentSize = (CGSizeMake(560, 280));
}

@end

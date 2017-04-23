//
//  ViewController.m
//  MessageViewDemo
//
//  Created by Chen Yiliang on 4/21/17.
//  Copyright © 2017  Chen Yiliang. All rights reserved.
//

#import "ViewController.h"
#import "CYMessageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)lightMessageViewButtonPressed:(id)sender {
    CYMessageView *messageView = [[CYMessageView alloc] initWithStyle:CYMessageViewStyleLight];
    messageView.textLabel.text = @"Message View";
    [messageView showInView:self.view];
    [messageView dismissAfterDelay:1.5];
}

- (IBAction)darkMessageViewButtonPressed:(id)sender {
    CYMessageView *messageView = [[CYMessageView alloc] initWithStyle:CYMessageViewStyleDark];
    messageView.textLabel.text = @"Message View";
    [messageView showInView:self.view];
    [messageView dismissAfterDelay:1.5];
}

- (IBAction)customMessageViewButtonPressed:(id)sender {
    UIColor *tintColor = [UIColor colorWithRed:238/255.0 green:248/255.0 blue:254/255.0 alpha:1.0];
    UIColor *textColor = [UIColor colorWithRed:45/255.0 green:161/255.0 blue:228/255.0 alpha:1.0];
    CYMessageView *messageView = [[CYMessageView alloc] initWithTintColor:tintColor textColor:textColor];
    messageView.textLabel.text = @"有为你成功推荐了11条新内容哦~";
    [messageView showInView:self.view];
    [messageView dismissAfterDelay:1.5];
}

@end

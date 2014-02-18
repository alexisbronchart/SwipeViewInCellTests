//
//  JATableViewController.h
//  SwipeViewInCellTests
//
//  Created by Alexis Bronchart on 18/02/14.
//  Copyright (c) 2014 Jafar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SwipeView.h>

@interface JATableViewController : UITableViewController

@end

@interface SwipeViewTableCell : UITableViewCell <SwipeViewDataSource, SwipeViewDelegate>

@property (nonatomic, strong) SwipeView *swipeView;

@end
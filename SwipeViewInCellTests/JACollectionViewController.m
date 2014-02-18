//
//  JACollectionViewController.m
//  SwipeViewInCellTests
//
//  Created by Alexis Bronchart on 18/02/14.
//  Copyright (c) 2014 Jafar. All rights reserved.
//

#import "JACollectionViewController.h"

@interface JACollectionViewController ()

@end

@implementation JACollectionViewController

#pragma mark - UICollectionView data source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SwipeViewCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    return cell;
}

@end






@implementation SwipeViewCollectionCell

@synthesize swipeView;

- (void) awakeFromNib {
    
    [self initialize];
}

- (void) initialize {
    
    self.swipeView = [SwipeView new];
    self.swipeView.translatesAutoresizingMaskIntoConstraints = NO;
    self.swipeView.dataSource = self;
    self.swipeView.delegate = self;
    self.swipeView.backgroundColor = [UIColor whiteColor];
    self.swipeView.bounces = YES;
    
    [self addSubview:self.swipeView];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[swipeView]|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:NSDictionaryOfVariableBindings(swipeView)]];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[swipeView]|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:NSDictionaryOfVariableBindings(swipeView)]];
}


#pragma mark -
#pragma mark SwipeView data source

- (NSInteger)numberOfItemsInSwipeView:(SwipeView *)swipeView {
    
    return 6;
}

- (UIView *)swipeView:(SwipeView *)swipeView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view {
    
    UIImageView *imageView = nil;
    
    if (view == nil) {
        
        // intialize the tile
        view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.swipeView.frame.size.height, self.swipeView.frame.size.height)];
        
        // add image view
        imageView = [[UIImageView alloc] init];
        imageView.tag = 42;
        [imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [view addSubview:imageView];
        
        [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[imageView]-10-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(imageView)]];
        
        [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[imageView]-10-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(imageView)]];
        
    } else {
        
        imageView = (UIImageView *)[view viewWithTag:42];
    }
    
    imageView.backgroundColor = [UIColor redColor];
    
    return view;
}

@end
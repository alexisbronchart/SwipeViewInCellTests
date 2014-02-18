//
//  JAPage2ViewController.m
//  SwipeViewInCellTests
//
//  Created by Alexis Bronchart on 18/02/14.
//  Copyright (c) 2014 Jafar. All rights reserved.
//

#import "JAPage2ViewController.h"
#import "JACollectionViewController.h"

@interface JAPage2ViewController ()

@end

@implementation JAPage2ViewController


#pragma mark - Lifecycle methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"CollectionViews";
    
    self.delegate = self;
    self.dataSource = self;
	
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    JACollectionViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"collectionViewController"];
    
    [self setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}


#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    JACollectionViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"collectionViewController"];
    
    return vc;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    JACollectionViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"collectionViewController"];
    
    return vc;
}


@end

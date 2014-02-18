//
//  JAPage1ViewController.m
//  SwipeViewInCellTests
//
//  Created by Alexis Bronchart on 18/02/14.
//  Copyright (c) 2014 Jafar. All rights reserved.
//

#import "JAPage1ViewController.h"
#import "JATableViewController.H"

@interface JAPage1ViewController ()

@end

@implementation JAPage1ViewController


#pragma mark - Lifecycle methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"TableViews";
    
    self.delegate = self;
    self.dataSource = self;
	
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    JATableViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"tableViewController"];
    
    [self setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}


#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    JATableViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"tableViewController"];
    
    return vc;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    JATableViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"tableViewController"];
    
    return vc;
}


@end

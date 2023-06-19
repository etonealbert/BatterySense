//
//  MainMenuController.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//
#import "MainMenuController.h"
#import "MainMenuView.h"
#import "MainMenuModel.h"

@interface MainMenuController ()

@property (nonatomic, strong) MainMenuModel *mainMenuModel;

@end

@implementation MainMenuController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.mainMenuModel = [[MainMenuModel alloc] init];
    self.mainMenuView = [[MainMenuView alloc] init];
    self.mainMenuView.frame = self.view.bounds;  // adjust to your needs
    self.mainMenuView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.mainMenuView];

    // Set label text
    self.mainMenuView.helloLabel.text = @"Hello, World!";
}

@end

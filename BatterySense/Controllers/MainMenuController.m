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

@property (nonatomic, strong) MainMenuView *mainMenuView;
@property (nonatomic, strong) MainMenuModel *mainMenuModel;

@end

@implementation MainMenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainMenuModel = [[MainMenuModel alloc] init];
    self.mainMenuView = [[MainMenuView alloc] init];
    [self.view addSubview:self.mainMenuView.view];
}

@end

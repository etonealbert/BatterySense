//
//  MainMenuView.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//

#import "MainMenuView.h"

@interface MainMenuView ()

@end

@implementation MainMenuView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Привязка outlet'а из Storyboard к проперти helloLabel
    // Обратите внимание, что имя outlet'а должно совпадать с именем проперти
    self.helloLabel.text = @"Hello World";
}

- (void)setupUI {
    // Create and configure the label
    UILabel *helloLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    helloLabel.center = self.view.center;
    helloLabel.textAlignment = NSTextAlignmentCenter;
    helloLabel.text = @"Hello World";
    
    // Add the label to the view
    [self.view addSubview:helloLabel];
}

@end

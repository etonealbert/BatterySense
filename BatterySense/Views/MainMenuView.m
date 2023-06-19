//  MainMenuView.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//
#import "MainMenuView.h"

@implementation MainMenuView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    // Create and configure the label
    self.helloLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    self.helloLabel.textAlignment = NSTextAlignmentCenter;
    
    // Add the label to the view
    [self addSubview:self.helloLabel];
}

@end

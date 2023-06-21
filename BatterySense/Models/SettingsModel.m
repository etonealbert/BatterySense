//
//  SettingsModel.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//

#import "SettingsModel.h"

@implementation SettingsModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _settings = @[@"Setting 1", @"Setting 2", @"Setting 3", @"Setting 4"];
    }
    return self;
}

@end


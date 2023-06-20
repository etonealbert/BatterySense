//
//  HistoryModel.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//

#import "HistoryModel.h"

@implementation HistoryModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _chargingStages = @[
            @"Plug-in the charger",
            @"Initialization",
            @"Trickle charge",
            @"Constant current charge",
            @"Constant voltage charge",
            @"Topping off",
            @"Battery full",
            @"Disconnect from charger",
            @"Unplug from the phone"
        ];
    }
    return self;
}

@end


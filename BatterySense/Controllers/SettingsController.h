//
//  SettingsController.h
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//

#ifndef SettingsController_h
#define SettingsController_h

#import <UIKit/UIKit.h>
#import "SettingsModel.h"
#import "SettingsView.h"

@interface SettingsController : UITableViewController

@property (strong, nonatomic) SettingsModel *model;
@property (strong, nonatomic) SettingsView *settingsView;

@end

#endif /* SettingsController_h */


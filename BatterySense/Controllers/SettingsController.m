//
//  SettingsController.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//

#import "SettingsController.h"
#import "AdvancedSettingsView.h"

@implementation SettingsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[SettingsModel alloc] init];
    self.settingsView = [[SettingsView alloc] init];
    self.settingsView.dataSource = self;
    self.settingsView.delegate = self;
    self.view = self.settingsView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.settings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"settingsCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = self.model.settings[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    AdvancedSettingsView *advancedSettingsView = [[AdvancedSettingsView alloc] init];
    [self.navigationController pushViewController:advancedSettingsView animated:YES];
}

@end


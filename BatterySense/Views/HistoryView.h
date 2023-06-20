//
//  HistoryView.h
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//

#import <UIKit/UIKit.h>

@interface HistoryView : UIView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end



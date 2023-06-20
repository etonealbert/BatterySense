//
//  HistoryController.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.
//

#import "HistoryController.h"
#import "HistoryView.h"
#import "HistoryModel.h"

@interface HistoryController ()

@property (nonatomic, strong) HistoryView *historyView;
@property (nonatomic, strong) HistoryModel *historyModel;

@end

@implementation HistoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create an instance of HistoryModel
    self.historyModel = [[HistoryModel alloc] init];
    
    // Create an instance of HistoryView
    self.historyView = [[HistoryView alloc] initWithFrame:self.view.bounds];
    self.historyView.dataSource = self.historyModel.chargingStages;
    [self.view addSubview:self.historyView];
}

@end


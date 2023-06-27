//
//  AdvancedSettingsView.m
//  BatterySense
//
//  Created by Albert on 19.06.2023.


#import "AdvancedSettingsView.h"

@interface AdvancedSettingsView ()

@property (strong, nonatomic) UIView *squareView;

@end


@implementation AdvancedSettingsView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create square view
    self.squareView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.squareView.center = self.view.center;
    self.squareView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.squareView];
    
    // Create a back button and add to the navigation bar
    if (@available(iOS 13.0, *)) {
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage systemImageNamed:@"chevron.backward"]
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(backButtonPressed)];
        self.navigationItem.leftBarButtonItem = backButton;
    } else {
        // Fallback on earlier versions
    }
    
    // Start square animation
    [self startSquareAnimation];
}

- (void)backButtonPressed {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)startSquareAnimation {
    [UIView animateWithDuration:0.5
                          delay:0
                        options: UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
        CGRect frame = self.squareView.frame;
        frame.origin.y += 100;
        self.squareView.frame = frame;
    }
                     completion:nil];
}

@end


//
//  ViewController.m
//  CCRACProblem
//
//  Created by CC on 2021/5/7.
//

#import "ViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;

@end

@implementation ViewController

- (void)test1 {
    [self.textField1.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        NSLog(@"1 -> %@", x);
    }];
    
    self.textField1.text = @"CC 1";
}

- (void)test2 {
    [self.textField2.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        NSLog(@"2 -> %@", x);
    }];
    
    [self.textField2 becomeFirstResponder];
    self.textField2.text = @"CC 2";
}

- (void)test3 {
    [self.textField3.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        NSLog(@"3 -> %@", x);
    }];
    
    [self.textField3 becomeFirstResponder];
    self.textField3.text = @"CC 3";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [self test1];
//    [self test2];
    [self test3];
}


@end

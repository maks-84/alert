//
//  ViewController.m
//  VKApiLog
//
//  Created by Mac on 08.06.16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated {
    [self alertView];
}
-(void) alertView {
        UIAlertController *alertView  = [UIAlertController alertControllerWithTitle:@"Enter VK" message:@"Log In" preferredStyle:UIAlertControllerStyleAlert];
    
       [alertView addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"log in";
    }];
    [alertView addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"passwotd";
        textField.secureTextEntry = YES;
    }];
    UIAlertAction *doneButton = [UIAlertAction actionWithTitle:@"Log in" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UITextField *login = alertView.textFields[0].text;
        UITextField *pass = alertView.textFields[1].text;
        
        NSLog(@"log in%@ pass:%@", login, pass);
        
    }];
    UIAlertAction *cancelButton = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertView addAction:doneButton];
    [alertView addAction:cancelButton];
    

    [self presentViewController:alertView animated:YES completion:nil];
    
    dispatch_introspection_hook_queue_item_dequeue(dispatch_data_create_subrange(c
                                                                                 s
                                                                                 dispatch_data_create_subrange(s, <#size_t offset#>, <#size_t length#>), <#size_t offset#>, <#size_t length#>), <#dispatch_object_t item#>)
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

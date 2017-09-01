//
//  ViewController.m
//  MENUSDKDemo
//
//  Created by huangwei on 2017/8/28.
//  Copyright © 2017年 tangpeng. All rights reserved.
//

#import "ViewController.h"
#import <SmartService.h>

@interface ViewController ()<SmartServiceDelegate>
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置代理
    [SmartService smartService].delegate = self;
    
    //设备类型
    [SmartService smartService].type = SmartPeripheralTypeBracelet;
    
    //设置设备名称
    [SmartService smartService].peripheralName = @"SmartBraceletMI";
    
    //指定连接方式
    [SmartService smartService].isSupportBlueTooth = YES;;
    
}

- (IBAction)login:(id)sender {
    [[SmartService smartService] connectSmartPeripheral];
}

- (void)smartService:(SmartService *)service readData:(id)data{
    NSLog(@"%@",data);
}

@end

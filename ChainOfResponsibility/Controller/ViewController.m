//
//  ViewController.m
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import "ViewController.h"
#import "Customer.h"
#import "MostFavoredCustomerOrderHandler.h"
#import "LargeOrderHandler.h"
#import "InternationalOrderHandler.h"
#import "DomesticOrderHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MostFavoredCustomerOrderHandler *mostFavored = [[MostFavoredCustomerOrderHandler alloc] init];
    LargeOrderHandler *largeOrder = [[LargeOrderHandler alloc] init];
    InternationalOrderHandler *internationalOrder = [[InternationalOrderHandler alloc] init];
    DomesticOrderHandler *domesticOrder = [[DomesticOrderHandler alloc] init];
    
    [mostFavored setNextOrderHandler:largeOrder];
    [largeOrder setNextOrderHandler:internationalOrder];
    [internationalOrder setNextOrderHandler:domesticOrder];
    
    // Normal Customer
    Customer *jhon = [[Customer alloc] initWithName:@"Jhon"];
    Customer *samuel = [[Customer alloc] initWithName:@"Samuel"];
    //Added Samuel to Most Favourd Customer List.
    [mostFavored addMostFavoredCustomer:samuel];
    
    
    AbstractOrderHandler *orderHandler = mostFavored;
    [orderHandler receiveOrder:[[Order alloc] initWithOrder:1 totalAmount:30000 international:NO customer:samuel]];
    [orderHandler receiveOrder:[[Order alloc] initWithOrder:1 totalAmount:30001 international:YES customer:jhon]];
    [orderHandler receiveOrder:[[Order alloc] initWithOrder:1 totalAmount:30000 international:YES customer:jhon]];
    [orderHandler receiveOrder:[[Order alloc] initWithOrder:1 totalAmount:30000 international:NO customer:jhon]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

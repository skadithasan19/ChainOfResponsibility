//
//  MostFavoredCustomerOrderHandler.m
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import "MostFavoredCustomerOrderHandler.h"

@interface MostFavoredCustomerOrderHandler()

@property (nonatomic,strong)NSMutableArray *mostFavoredCustomers;

@end

@implementation MostFavoredCustomerOrderHandler


-(id)init {
    self = [super init];
    if (self) {
        self.mostFavoredCustomers = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addMostFavoredCustomer:(Customer *)customer {
    [self.mostFavoredCustomers addObject:customer];
}


-(NSMutableArray *)getAllMostFavoredCustomers {
    return self.mostFavoredCustomers;
}
// @Override
-(void)receiveOrder:(Order *)order {
    if([self.mostFavoredCustomers containsObject:order.getCustomer]){
        NSLog(@"Order will be handled by Most Favored Customer Order Handler");
    }else{
        [self.nextOrderHandler receiveOrder:order];
    }
}

@end

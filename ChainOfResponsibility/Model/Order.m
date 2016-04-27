//
//  Order.m
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import "Order.h"


@interface Order()

@property (nonatomic) NSInteger ordernumber;
@property (nonatomic) double totalamount;
@property (nonatomic) BOOL international;
@property (nonatomic) Customer *customer;

@end

@implementation Order

-(id)initWithOrder:(NSInteger)orderNo totalAmount:(double)amount international:(BOOL)success customer:(Customer *)customer {

    self = [super init];
    if (self) {
        self.ordernumber = orderNo;
        self.totalamount = amount;
        self.international = success;
        self.customer = customer;
    }
    return self;
}


-(NSInteger)getOrdernumber {
    return self.ordernumber;
}

-(BOOL)getInternational {
    return self.international;
}


-(double)getTotalamount {
    return self.totalamount;
}

-(Customer *)getCustomer {
    return self.customer;
}


@end

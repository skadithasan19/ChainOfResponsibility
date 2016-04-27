//
//  Order.h
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Customer.h"

@interface Order : NSObject

-(id)initWithOrder:(NSInteger)orderNo totalAmount:(double)amount international:(BOOL)success customer:(Customer *)customer;

-(Customer *)getCustomer;

-(NSInteger)getOrdernumber;

-(BOOL)getInternational;

-(double)getTotalamount;

@end

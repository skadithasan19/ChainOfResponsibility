//
//  MostFavoredCustomerOrderHandler.h
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractOrderHandler.h"

@interface MostFavoredCustomerOrderHandler : AbstractOrderHandler

-(void)addMostFavoredCustomer:(Customer *)customer;

-(NSMutableArray *)getAllMostFavoredCustomers;

@end

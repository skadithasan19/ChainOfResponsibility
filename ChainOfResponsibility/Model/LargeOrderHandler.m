//
//  LargeOrderHandler.m
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import "LargeOrderHandler.h"

@implementation LargeOrderHandler

// @Override
-(void)receiveOrder:(Order *)order {
    
    if([order getTotalamount] > 30000){
        NSLog(@"Order will be handled by Large Order Handler");
    }else{
        [self.nextOrderHandler receiveOrder:order];
    }
}

@end

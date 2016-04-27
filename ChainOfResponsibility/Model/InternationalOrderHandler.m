
//
//  InternationalOrderHandler.m
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import "InternationalOrderHandler.h"

@implementation InternationalOrderHandler

// @Override
-(void)receiveOrder:(Order *)order {
    if([order getInternational]){
        NSLog(@"Order will be handled by International Order Handler");
    }else{
        [self.nextOrderHandler receiveOrder:order];
    }
}

@end

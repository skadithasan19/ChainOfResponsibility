//
//  DomesticOrderHandler.m
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import "DomesticOrderHandler.h"

@implementation DomesticOrderHandler

// @Override
-(void)receiveOrder:(Order *)order {
    NSLog(@"Order will be handled by Domestic Order Handler");
}

@end

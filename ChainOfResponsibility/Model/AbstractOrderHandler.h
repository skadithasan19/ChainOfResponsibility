//
//  AbstractOrderHandler.h
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Order.h"
#import "Customer.h"
@protocol AbstractOrderHandlerDelegate <NSObject>

@optional
-(void)receiveOrder:(Order *)order;

@end


@interface AbstractOrderHandler : NSObject <AbstractOrderHandlerDelegate>

@property (nonatomic,strong) AbstractOrderHandler *nextOrderHandler;

//-(void) setNextOrderHandler:(AbstractOrderHandler *)nextOrderHandler;

@end

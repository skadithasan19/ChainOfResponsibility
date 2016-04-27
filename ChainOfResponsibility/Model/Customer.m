//
//  Customer.m
//  ChainOfResponsibility
//
//  Created by Md Adit Hasan on 4/26/16.
//  Copyright © 2016 Md Adit Hasan. All rights reserved.
//

#import "Customer.h"

@interface Customer ()

@property (nonatomic,strong) NSString *name;

@end

@implementation Customer

-(id)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

-(NSString *)getCustomerName {
    return self.name;
}


@end

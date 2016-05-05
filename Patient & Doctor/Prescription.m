//
//  Prescription.m
//  Patient & Doctor
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(instancetype)init {
    return [self initWithType:@"Advil"];
}

-(instancetype)initWithType:(NSString *)type {
    self = [super init];
    if (self) {
        _type = type;
    }
    return self;
}
@end

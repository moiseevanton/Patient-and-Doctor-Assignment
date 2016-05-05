//
//  Patient.m
//  Patient & Doctor
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)init {
    
    return [self initWithName:@"" age:0 healthCard:NO symptoms:@""];
    
}

-(instancetype)initWithName:(NSString *)name age:(int)age healthCard:(BOOL)healthCard symptoms:(NSString *)symptoms {
    
    self = [super init];
    
    if (self) {
        _name = name;
        _age = age;
        _healthCard = healthCard;
        _symptoms = symptoms;
        _myPrescriptions = [NSMutableArray new];
    }
    return self;
}

-(void)visitDoctor:(Doctor *)doctor {
    
    if (self.healthCard) {
        [doctor acceptPatient:self];
    } else {
        
    }
    
}

-(void)requestMedication:(Doctor *)doctor {
    
    if ([doctor.listOfPatients containsObject:self]) {
        
        [self.myPrescriptions addObject:[doctor assignMedication:self]];
        
    } else {
        
        
        
    }
    
}

@end

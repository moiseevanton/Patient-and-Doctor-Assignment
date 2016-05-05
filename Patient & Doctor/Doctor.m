//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype)init {
    return [self initWithName:nil specialization:nil dataBase:nil];
}

-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization dataBase:(NSMutableDictionary *)database{
    
    self = [super init];
    
    if (self) {
        _name = name;
        _specialization = specialization;
        _dataBase = database;
        _listOfPatients = [NSMutableArray new];
    }
    return self;
}

- (void)acceptPatient:(Patient *)patient {
    [self.listOfPatients addObject:patient];
}

-(Prescription *)assignMedication:(Patient *)patient {
    Prescription *meds = nil;
    NSArray *seriousSymptoms = @[@"nausea", @"vomiting", @"diarrhea", @"cold", @"flu", @"tooth pain"];
    if ([seriousSymptoms containsObject:patient.symptoms]) {
        meds = [[Prescription alloc] initWithType:@"antibiotics"];
    } else {
        meds = [Prescription new];
        
    }
    [self.dataBase setObject:meds forKey:patient.symptoms];
    return meds;
    
    
}


@end

//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@class Patient;

@interface Doctor : NSObject

@property NSString *name;

@property NSString *specialization;

@property NSMutableArray *listOfPatients;

@property NSMutableDictionary *dataBase;

-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization dataBase:(NSMutableDictionary *)database;

-(void)acceptPatient:(Patient *)patient;

-(Prescription *)assignMedication:(Patient *)patient;

@end

//
//  Patient.h
//  Patient & Doctor
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Prescription.h"

@interface Patient : NSObject

@property NSString *name;

@property int age;

@property BOOL healthCard;

@property NSString *symptoms;

@property NSMutableArray *myPrescriptions;

-(instancetype)initWithName:(NSString *)name age:(int)age healthCard:(BOOL)healthCard symptoms:(NSString *)symptoms;

-(void)visitDoctor:(Doctor *)doctor;

-(void)requestMedication:(Doctor *)doctor;

@end

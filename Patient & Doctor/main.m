//
//  main.m
//  Patient & Doctor
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    
    NSMutableDictionary *db = [NSMutableDictionary new];
    Doctor *doc = [[Doctor alloc] initWithName:@"Robert" specialization:@"Family Doctor" dataBase:db];
    Patient *p = [[Patient alloc] initWithName:@"John" age:20 healthCard:YES symptoms:@"diarrhea"];
    
    [p visitDoctor:doc];
    [p requestMedication:doc];
    
    NSLog(@"%@", db);
    
    return 0;
}

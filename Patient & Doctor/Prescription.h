//
//  Prescription.h
//  Patient & Doctor
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property NSString *type;

-(instancetype)initWithType:(NSString *)type;

@end

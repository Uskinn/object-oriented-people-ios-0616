//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Sergey Nevzorov on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property(strong, nonatomic, readwrite) NSString *name;
@property(nonatomic, readwrite) NSUInteger ageInYears;
@property(nonatomic, readwrite) NSUInteger heightInInches;
@property(strong, nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson

- (instancetype)init{
    
            self = [self initWithName:@"String"
                           ageInYears:1
                      heightInInches:10];
    
    return self;
}

- (instancetype)initWithName:(NSString *)name
                   ageInYears:(NSUInteger)years{
    
    self = [super init];
    if (self) {
        _name = name,
        _ageInYears = years,
        _heightInInches = 10,
        _skills = [[NSMutableArray alloc]init];
    }
    return self;
}


- (instancetype)initWithName:(NSString *)name
                   ageInYears:(NSUInteger)years
               heightInInches:(NSUInteger)height{
    
    self = [super init];
    if (self) {
        _name = name,
         _ageInYears = years,
         _heightInInches = height,
         _skills = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString *)celebrateBirthday{
    
    self.ageInYears += 1;
    NSString *name = self.name.uppercaseString;
    NSUInteger age = self.ageInYears;
    NSString *postfix = [self ordinalForInteger:self.ageInYears].uppercaseString;
    NSString *happyBirthday = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", age, postfix,name ];
    NSLog(@"%@", happyBirthday);
    
    
   return happyBirthday;
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
    }

- (void)learnSkillBash{
    
    if (![self.skills containsObject:@"bash"]) {
        [self.skills addObject:@"bash"];
    }
}

- (void)learnSkillXcode{
    
    if (![self.skills containsObject:@"Xcode"]) {
        [self.skills addObject:@"Xcode"];
    }
}

- (void)learnSkillObjectiveC{
    
    if (![self.skills containsObject:@"Objective-C"]) {
        [self.skills addObject:@"Objective-C"];
    }
}

- (void)learnSkillObjectOrientedProgramming{
    
    if (![self.skills containsObject:@"Object-Oriented Programming"]) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}

- (void)learnSkillInterfaceBuilder{
    
    if (![self.skills containsObject:@"Interface Builder"]) {
        [self.skills addObject:@"Interface Builder"];
    }
}

- (BOOL)isQualifiedTutor{
    
    if ([self.skills count] >= 4){
        return  YES;
    }
    
    return NO;
}





@end

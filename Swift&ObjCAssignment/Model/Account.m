//
//  Account.m
//  Swift&ObjCAssignment
//
//  Created by The App Experts on 06/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import "Account.h"

@implementation Account

@synthesize accountName, accountNumber, accountBalance;

- (Account*)initWithDictionary:(NSDictionary*) d {
    accountName = d[@"kind"];
    accountNumber = d[@"number"];
    accountBalance = [d[@"balance"] floatValue];
    
    return self;
}


- (void)setAccountName:(NSString *)accountName {
    self.accountName = accountName;
}

- (void)setAccountNumber:(NSString * _Nonnull)accountNumber {
    self.accountNumber = accountNumber;
}

- (void)setAccountBalance:(float)accountBalance {
    self.accountBalance = accountBalance;
}

- (NSString*)getAccountName {
    return self.accountName;
}

- (float)getAccountBalance {
    return self.accountBalance;
}

- (NSString*)getAccountNumber {
    return self.accountNumber;
}

@end

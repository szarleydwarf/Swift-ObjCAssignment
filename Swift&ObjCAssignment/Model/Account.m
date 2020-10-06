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

- (void)setAccountName:(NSString *)accountName {
    self.accountName = accountName;
}

- (void)setAccountNumber:(NSInteger * _Nonnull)accountNumber {
    self.accountNumber = accountNumber;
}

- (void)setAccountBalance:(NSString * _Nonnull)accountBalance {
    self.accountBalance = accountBalance;
}

- (NSString*)getAccountName {
    return self.accountName;
}

- (NSString*)getAccountBalance {
    return self.accountBalance;
}

- (NSInteger*)getAccountNumber {
    return self.accountNumber;
}

@end

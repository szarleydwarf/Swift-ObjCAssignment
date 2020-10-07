//
//  Account.m
//  Swift&ObjCAssignment
//
//  Created by The App Experts on 06/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import "Account.h"

@implementation Account

@synthesize name, title, number, balance, currencyCode;

- (Account*)initWithDictionary:(NSDictionary*) d {
    self.name = d[@"kind"];
    self.title = d[@"title"];
    self.number = d[@"number"];
    self.balance = [d[@"balance"] floatValue];
    self.currencyCode = d[@"currency"];
    
    return self;
}

- (void)setAccName:(NSString * _Nonnull)accountName{
    self.name = accountName;
}

- (void)setAccNumber:(NSString * _Nonnull)accountNumber {
    self.number = accountNumber;
}

- (void)setAccBalance:(float)accountBalance {
    self.balance = accountBalance;
}

- (void)setAccTitle:(NSString * _Nonnull)accountTitle {
    self.title = accountTitle;
}

- (void)setAccCurrencyCode:(NSString * _Nonnull)accountCurrencyCode {
    self.currencyCode = accountCurrencyCode;
}

- (NSString*)getName {
    return self.name;
}

- (NSString*)getTitle {
    return self.title;
}

- (NSString*)getNumber {
    return self.number;
}

- (float)getBalance {
    return self.balance;
}

- (NSString*)getCurrencyCode {
    return self.currencyCode;
}

-(NSString*)getCurrencySymbol {
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:self.currencyCode];
    NSString *currencySymbol = [NSString stringWithFormat:@"%@",[locale displayNameForKey:NSLocaleCurrencySymbol value:self.currencyCode]];
    NSLog(@"Currency Symbol : %@", currencySymbol);
    return currencySymbol;
}

@end

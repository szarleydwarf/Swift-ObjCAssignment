//
//  Account.h
//  Swift&ObjCAssignment
//
//  Created by The App Experts on 06/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Account : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* title;
@property (nonatomic) NSString* number;
@property float balance;
@property (nonatomic) NSString* currencyCode;

- (Account*)initWithDictionary:(NSDictionary*) d;

- (void)setAccName:(NSString * _Nonnull)accountName;
- (void)setAccNumber:(NSString * _Nonnull)accountNumber;
- (void)setAccBalance:(float)accountBalance;
- (void)setAccTitle:(NSString * _Nonnull)title;
- (void)setAccCurrencyCode:(NSString * _Nonnull)currencyCode;

- (NSString*)getName;
- (NSString*)getTitle;
- (NSString*)getNumber;
- (float)getBalance;
- (NSString*)getCurrencyCode;

-(NSString*)getCurrencySymbol;
@end

NS_ASSUME_NONNULL_END

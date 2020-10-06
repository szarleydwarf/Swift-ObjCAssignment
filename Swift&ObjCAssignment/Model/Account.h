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

@property (nonatomic) NSString* accountName;
@property (nonatomic) NSInteger* accountNumber;
@property (nonatomic) NSString* accountBalance;

- (void)setAccountName:(NSString * _Nonnull)accountName;
- (void)setAccountNumber:(NSInteger * _Nonnull)accountNumber;
- (void)setAccountBalance:(NSString * _Nonnull)accountBalance;

- (NSString*)getAccountName;
- (NSString*)getAccountBalance;
- (NSInteger*)getAccountNumber;

@end

NS_ASSUME_NONNULL_END

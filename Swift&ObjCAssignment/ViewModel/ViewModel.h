//
//  ViewModel.h
//  Swift&ObjCAssignment
//
//  Created by The App Experts on 06/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewModel : NSObject

@property (nonatomic) NSArray<Account*>*accounts;

- (NSArray*)getAccounts;
- (void) setAccounts:(NSArray<Account *> * _Nonnull)accounts;

@end

NS_ASSUME_NONNULL_END

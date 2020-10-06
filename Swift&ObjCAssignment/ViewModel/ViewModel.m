//
//  ViewModel.m
//  Swift&ObjCAssignment
//
//  Created by The App Experts on 06/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel
@synthesize accounts;

- (NSArray*)getAccounts {
    return accounts;
}

- (void) setAccounts:(NSArray<Account *> * _Nonnull)accounts {
    self.accounts = accounts;
}
- (void) parseJSON {
    NSData* data = [NSData dataWithContentsOfFile:@"accounts"];
    NSError *e = nil;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingMutableContainers error: &e];
    
    if (!jsonArray) {
        NSLog(@"Error parsing JSON: %@", e);
    } else {
        for(NSDictionary *item in jsonArray) {
            NSLog(@"Item: %@", item);
        }
    }
}
@end

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


- (NSMutableArray*)getAccounts {
    return accounts;
}

- (void) setAccounts:(NSMutableArray<Account *> * _Nonnull)accounts {
    self.accounts = accounts;
}

- (void) parseJSON {
    accounts = [[NSMutableArray alloc]init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"accounts" ofType:@"json"];
      
    NSData* data = [NSData dataWithContentsOfFile:path];
    NSError *e = nil;
    id json = [NSJSONSerialization JSONObjectWithData: data options: 0 error: &e];
    
    if (!json) {
        NSLog(@"Error parsing JSON: %@", e);
    } else {
        for (NSDictionary* d in json) {
            Account* a = [[Account alloc]initWithDictionary:d];
            [accounts addObject:a];
        }
    }
}
@end

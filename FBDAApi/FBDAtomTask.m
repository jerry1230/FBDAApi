//
//  FBDAtomTask.m
//  FBDAApi
//
//  Created by LM on 2021/4/28.
//

#import <Foundation/Foundation.h>
#import "FBDAtomTask.h"
@interface FBDAtomTask()

@end
@implementation FBDAtomTask


- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}


- (void)doThings{
    for (int i = 0; i < 100; i++) {
        NSLog(@"do task:%d",i);
    }
    NSLog(@"Finish!!!!!!!!!!!!!");
}




@end

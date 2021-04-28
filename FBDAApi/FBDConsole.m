//
//  FBDConsole.m
//  FBDAApi
//
//  Created by LM on 2021/4/28.
//

#import <Foundation/Foundation.h>
#import "FBDConsole.h"
@interface FBConsole ()
@property (assign,nonatomic) NSInteger level;

@end

@implementation FBConsole


- (void)loadData{
    self.level = 10;
}

- (void)environmentLog{
    NSLog(@"OC-%s:Hello world!",__func__);
}

- (void)apiLog:(NSString *)api{
    NSLog(@"api:%@",api);
    
}

@end

//
//  FBDPipeline.h
//  FBDAApi
//
//  Created by LM on 2021/4/28.
//

#ifndef FBDPipeline_h
#define FBDPipeline_h


#endif /* FBDPipeline_h */
#import <UIKit/UIKit.h>
@interface FBDPipeline : NSObject

@property (copy,nonatomic)NSString *name;

@property (strong,nonatomic)NSURL *url;

@property (assign,nonatomic)NSUInteger *dataSize;

@property (assign,nonatomic)NSUInteger *portNumber;


@end

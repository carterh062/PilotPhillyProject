//
//  ParseHandler.h
//  ParseSetup
//
//  Created by A on 11/9/13.
//  Copyright (c) 2013 CarterIncorporated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParseHandler : NSObject

@property (strong, nonatomic) NSString *appId;
@property (strong, nonatomic) NSString *clientKey;

-(id)init;
-(void)startParse;
-(void)testPushObj:(NSString*)obj
               key:(NSString *)key;
-(void)pushLocationX:(int)xVal Y:(int)yVal Z:(int)zVal;
@end

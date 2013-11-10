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
@property (nonatomic) double lat;
@property (nonatomic) double longi;
@property (nonatomic) bool done;
-(id)init;
-(void)startParse;
-(void)testPushObj:(NSString*)obj
               key:(NSString *)key;
-(void)pushLocationLatitude:(double)latitude longitude:(double)longitude title:(NSString*)title currAddress:(NSString*)currAddress;

-(NSMutableArray*) returnLocations:(void (^)(void))completionBlock;
@end

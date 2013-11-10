//
//  ParseHandler.m
//  ParseSetup
//
//  Created by A on 11/9/13.
//  Copyright (c) 2013 CarterIncorporated. All rights reserved.
//

#import "ParseHandler.h"
#import "Parse/Parse.h"
@implementation ParseHandler

-(id)init{
    self=[super init];
    return self;
    
}
-(void)startParse
{
    self.appId =@"6KV47V402GepngG99hurbbp2IlVnfohb9xQ8jHdd";
    self.clientKey =@"AM04FHwEoQIkjYWx4bW5aX7YbR6KhLTF2LvAqCUL";
    [Parse setApplicationId:self.appId
                  clientKey:self.clientKey];
}
-(void)testPushObj:(NSString *)obj key:(NSString *)key
{
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    [testObject setObject:obj forKey:key];
    [testObject save];
}
-(void)pushLocationLatitude:(double)latitude longitude:(double)longitude title:(NSString*)title currAddress:(NSString *)currAddress{
    PFGeoPoint *coordObject = [PFGeoPoint geoPointWithLatitude:latitude longitude:longitude];
    PFObject *placeObject = [PFObject objectWithClassName:@"PlaceObject"];
    [placeObject setObject:coordObject forKey:@"location"];
    [placeObject setObject:title forKey:@"title"];
    [placeObject setObject:currAddress forKey:@"Address"];
    [placeObject saveInBackground];
    NSLog(@"latitude" );
}
@end

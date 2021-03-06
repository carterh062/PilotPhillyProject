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
    latitude = _lat;
    longitude = _longi;
    PFGeoPoint *coordObject = [PFGeoPoint geoPointWithLatitude:latitude longitude:longitude];
    PFObject *placeObject = [PFObject objectWithClassName:@"PlaceObject"];
    [placeObject setObject:coordObject forKey:@"location"];
    [placeObject setObject:title forKey:@"title"];
    [placeObject setObject:currAddress forKey:@"address"];
    [placeObject saveInBackground];
    
}
-(NSMutableArray*) returnLocations:(void (^)(void))completionBlock{
    NSMutableArray *titlesArray = [[NSMutableArray alloc]init];
    PFQuery *query = [PFQuery queryWithClassName:@"PlaceObject"];       // Get:     Class name from Parse.com
    [query orderByDescending:@"createdAt"];                                 // Order:   By most recent
    __block int counter = 0;
    self.done = NO;
    [query findObjectsInBackgroundWithBlock:^(NSArray *titles, NSError *error)
     {
         for (PFObject *title in titles)
         {
             // Event
             NSString *post = [title objectForKey:@"title"];               // Get:     From Column "event"
             if (post == nil) { post = @" "; }                 // Save:    Empty string if no data in current tablerow
             [titlesArray insertObject:post atIndex:counter];                 // Save:    DB-data to array
             NSLog(@"Parsed Array");
             counter++;
         }
         self.done = YES;
        NSLog(@"Array: %@",titlesArray);
         completionBlock();
     }];
    
    return titlesArray;
}
@end

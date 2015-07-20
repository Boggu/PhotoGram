//
//  PhotoGramApi.h
//  PhotoGram
//
//  Created by Sai anvesh Boggavarapu on 7/19/15.
//  Copyright (c) 2015 Sai anvesh Boggavarapu. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PhotoGramApi : NSObject
@property(nonatomic,strong) NSArray *dataArray;

+(PhotoGramApi *)sharedInstance;
-(void)search:(NSString *)user completion:(void(^)(id responseObject, NSError *error)) completionBlock;

@end

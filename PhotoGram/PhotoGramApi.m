//
//  PhotoGramApi.m
//  PhotoGram
//
//  Created by Sai anvesh Boggavarapu on 7/19/15.
//  Copyright (c) 2015 Sai anvesh Boggavarapu. All rights reserved.
//

#import "PhotoGramApi.h"
#import <AFNetworking/AFNetworking.h>

//static NSString * const urlString = @"https://api.instagram.com/v1/";

@interface PhotoGramApi()

@property(nonatomic,strong)AFHTTPSessionManager *sManager;

@end

@implementation PhotoGramApi

+(PhotoGramApi *)sharedInstance{
    static PhotoGramApi *instace;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instace =[[PhotoGramApi alloc]init];
    });
    return instace;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.sManager = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:@"https://api.instagram.com/v1/"]];
    }
    return self;
}
-(NSString *)getImages: (NSInteger)index{
    NSDictionary *dic = [self.dataArray objectAtIndex:index];
    return dic[@"images"];
}

-(void)search:(NSString *)user completion:(void(^)(id responseObject, NSError *error)) completionBlock{
    
    NSString *urlString =[NSString stringWithFormat:@"https://api.instagram.com/v1/" @"tags/search"];
    
    NSDictionary *parms= @{@"q": user, @"client_id": @"6ff05a22e2634559a24e08a52658e5f6"};
    
    
    [self.sManager GET:urlString parameters:parms success:^(NSURLSessionDataTask *task, id responseObject) {
     
        if(completionBlock)
        {
            completionBlock(responseObject,nil);
        }
    }
               failure:^(NSURLSessionDataTask *task, NSError *error) {
                   if (completionBlock) {
                       completionBlock(nil,error);
                       
                   }
                   
               }];
    
}




@end

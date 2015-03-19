//
//  Dicionario.h
//  Navigation
//
//  Created by Isaías Lima on 18/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dicionario : NSObject

@property (nonatomic, strong) NSArray *alphabet;
@property (nonatomic, strong) NSArray *examples;
@property (nonatomic, strong) NSArray *images;

+(Dicionario *)sharedInstance;


@end

//
//  Dicionario.h
//  Navigation
//
//  Created by Isaías Lima on 18/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface Dicionario : NSObject

@property (nonatomic, strong) NSMutableArray *alphabet;
@property (nonatomic, strong) NSMutableArray *examples;
@property (nonatomic, strong) NSMutableArray *images;

+(Dicionario *)sharedInstance;
-(void)trocaPalavra:(NSString *)palavra atIndex:(NSInteger)index;


@end

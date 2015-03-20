//
//  Dicionario.m
//  Navigation
//
//  Created by Isaías Lima on 18/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"
#import "Procura.h"
#import <Realm/Realm.h>

@implementation Dicionario
@synthesize alphabet, examples, images;

static Dicionario *SINGLETON = nil;
static bool isFirstAccess = YES;

+(id)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isFirstAccess = NO;
        SINGLETON = [[super allocWithZone:NULL] init];
    });
    
    return SINGLETON;
}

-(void)trocaPalavra:(NSString *)palavra atIndex:(NSInteger)index {
    NSString *aux = [palavra substringFromIndex:[palavra length] - ([palavra length] - 1)];
    [self.examples replaceObjectAtIndex:index withObject:aux];
}



+ (id) allocWithZone:(NSZone *)zone
{
    return [self sharedInstance];
}

+ (id)copyWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

+ (id)mutableCopyWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

- (id)copy
{
    return [[Dicionario alloc] init];
}

- (id)mutableCopy
{
    return [[Dicionario alloc] init];
}

- (id) init
{
    if(SINGLETON){
        return SINGLETON;
    }
    if (isFirstAccess) {
        [self doesNotRecognizeSelector:_cmd];
    }
    self = [super init];
    if (self) {
        self.alphabet = [[NSMutableArray alloc] initWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", nil];
        
        self.examples = [[NSMutableArray alloc] initWithObjects:@"nta", @"ruxa", @"arro", @"edo", @"spada", @"lecha", @"ambá", @"orta", @"ndio", @"acaré", @"aratê", @"ábios", @"acaco", @"inja", @"perário", @"atrão", @"uadro", @"ico", @"abiá", @"V", @"rubu", @"inho", @"ilson", @"ícara", @"akult", @"ebra", nil];
        
        self.images = [[NSMutableArray alloc] initWithObjects:[UIImage imageNamed:@"anta.jpg"], [UIImage imageNamed:@"bruxa.jpg"], [UIImage imageNamed:@"carro.jpg"], [UIImage imageNamed:@"dedo.jpg"], [UIImage imageNamed:@"espada.jpg"], [UIImage imageNamed:@"flecha.jpg"], [UIImage imageNamed:@"gamba.jpg"], [UIImage imageNamed:@"horta.jpg"], [UIImage imageNamed:@"indio.jpg"], [UIImage imageNamed:@"jacare.jpg"], [UIImage imageNamed:@"karate.jpg"], [UIImage imageNamed:@"labios.jpg"], [UIImage imageNamed:@"macaco.jpg"], [UIImage imageNamed:@"ninja.png"], [UIImage imageNamed:@"operario.png"], [UIImage imageNamed:@"patrao.jpg"], [UIImage imageNamed:@"quadro.jpg"], [UIImage imageNamed:@"rico.jpg"], [UIImage imageNamed:@"sabia.jpg"], [UIImage imageNamed:@"tv.jpg"], [UIImage imageNamed:@"urubu.jpg"], [UIImage imageNamed:@"vinho.jpg"], [UIImage imageNamed:@"wilson.jpg"], [UIImage imageNamed:@"xicara.jpg"], [UIImage imageNamed:@"yakult.png"], [UIImage imageNamed:@"zebra.jpg"], nil];
    }
    return self;
}

@end

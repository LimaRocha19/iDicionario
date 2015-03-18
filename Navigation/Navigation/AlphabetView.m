//
//  AlphabetView.m
//  Navigation
//
//  Created by Isaías Lima on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "AlphabetView.h"


@interface AlphabetView ()

@end

@implementation AlphabetView {
    NSInteger contador;
}
@synthesize alphabet, letter, examples, images, word, figure;

- (void)viewDidLoad {
    
    contador = 0;
    
    alphabet = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", nil];
    
    examples = [[NSArray alloc] initWithObjects:@"nta", @"ruxa", @"arro", @"edo", @"spada", @"lecha", @"ambá", @"orta", @"ndio", @"acaré", @"aratê", @"ábios", @"acaco", @"inja", @"perário", @"atrão", @"uadro", @"ico", @"abiá", @"V", @"rubu", @"inho", @"ilson", @"ícara", @"akult", @"ebra", nil];
    
    images = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"anta.jpg"], [UIImage imageNamed:@"bruxa.jpg"], [UIImage imageNamed:@"carro.jpg"], [UIImage imageNamed:@"dedo.jpg"], [UIImage imageNamed:@"espada.jpg"], [UIImage imageNamed:@"flecha.jpg"], [UIImage imageNamed:@"gamba.jpg"], [UIImage imageNamed:@"horta.jpg"], [UIImage imageNamed:@"indio.jpg"], [UIImage imageNamed:@"jacare.jpg"], [UIImage imageNamed:@"karate.jpg"], [UIImage imageNamed:@"labios.jpg"], [UIImage imageNamed:@"macaco.jpg"], [UIImage imageNamed:@"ninja.png"], [UIImage imageNamed:@"operario.png"], [UIImage imageNamed:@"patrao.jpg"], [UIImage imageNamed:@"quadro.jpg"], [UIImage imageNamed:@"rico.jpg"], [UIImage imageNamed:@"sabia.jpg"], [UIImage imageNamed:@"tv.jpg"], [UIImage imageNamed:@"urubu.jpg"], [UIImage imageNamed:@"vinho.jpg"], [UIImage imageNamed:@"wilson.jpg"], [UIImage imageNamed:@"xicara.jpg"], [UIImage imageNamed:@"yakult.png"], [UIImage imageNamed:@"zebra.jpg"], nil];
    
    
    letter.text = [alphabet objectAtIndex:contador];
    word.text = [examples objectAtIndex:contador];
    figure.image = [images objectAtIndex:contador];
    
    

        
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)next:(id)sender {
    contador++;

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:figure cache:YES];
    [UIView commitAnimations];
    
    if (contador > 25) contador = 0;
    letter.text = [alphabet objectAtIndex:contador];
    word.text = [examples objectAtIndex:contador];
    figure.image = [images objectAtIndex:contador];
}

- (IBAction)previous:(id)sender {
    contador--;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:figure cache:YES];
    [UIView commitAnimations];
    
    if (contador < 0) contador = 25;
    letter.text = [alphabet objectAtIndex:contador];
    word.text = [examples objectAtIndex:contador];
    figure.image = [images objectAtIndex:contador];
}
@end

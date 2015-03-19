//
//  AlphabetView.m
//  Navigation
//
//  Created by Isaías Lima on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "AlphabetView.h"
#import "Dicionario.h"


@interface AlphabetView ()

@end

@implementation AlphabetView {
    NSInteger contador;
    Dicionario *dicionario;
}
@synthesize letter, word, figure;

- (void)viewDidLoad {
    
    contador = 0;
    dicionario = [Dicionario sharedInstance];
    
    letter.text = [dicionario.alphabet objectAtIndex:contador];
    word.text = [dicionario.examples objectAtIndex:contador];
    figure.image = [dicionario.images objectAtIndex:contador];
    
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
    letter.text = [dicionario.alphabet objectAtIndex:contador];
    word.text = [dicionario.examples objectAtIndex:contador];
    figure.image = [dicionario.images objectAtIndex:contador];
    
    figure.contentMode = UIViewContentModeScaleAspectFit;
    CGRect frame = figure.frame;
    frame.size.width = 100;
    figure.frame = frame;
}

- (IBAction)previous:(id)sender {
    contador--;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:figure cache:YES];
    [UIView commitAnimations];
    
    if (contador < 0) contador = 25;
    letter.text = [dicionario.alphabet objectAtIndex:contador];
    word.text = [dicionario.examples objectAtIndex:contador];
    figure.image = [dicionario.images objectAtIndex:contador];
    
    figure.contentMode = UIViewContentModeScaleAspectFit;
    CGRect frame = figure.frame;
    frame.size.width = 100;
    figure.frame = frame;
}
@end

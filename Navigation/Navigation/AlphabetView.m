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
@synthesize alphabet, letter;

- (void)viewDidLoad {
    
    contador = 0;
    
    alphabet = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", nil];
    
    letter.text = [alphabet objectAtIndex:contador];
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)next:(id)sender {
    contador++;
    if (contador > 25) contador = 0;
    letter.text = [alphabet objectAtIndex:contador];
}

- (IBAction)previous:(id)sender {
    contador--;
    if (contador < 0) contador = 25;
    letter.text = [alphabet objectAtIndex:contador];
}
@end

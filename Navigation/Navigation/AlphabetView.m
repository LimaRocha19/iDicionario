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
    UITextField *textField;
    UIBarButtonItem *go;
    UIBarButtonItem *search;
    UIToolbar *toolBar;
}
@synthesize letter, word, figure;

- (void)viewDidLoad {
    
    contador = 0;
    dicionario = [Dicionario sharedInstance];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 20, screenRect.size.width, 44)];
    [self.view addSubview:toolBar];
    
    textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, screenRect.size.width - 80, 25)];
    textField.backgroundColor = [UIColor whiteColor];
    textField.layer.cornerRadius = 7;
    textField.layer.borderWidth = 1;
    textField.layer.borderColor = [UIColor grayColor].CGColor;
    textField.placeholder = @"Editar palavra...";
    
    search = [[UIBarButtonItem alloc] initWithCustomView:textField];
    search.target = self;
    search.action = @selector(textFieldDidBeginEditing:);
    go = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(trocandoPalavra)];
    go.tintColor = [UIColor grayColor];
    toolBar.items = @[search,go];
    
    letter.text = [dicionario.alphabet objectAtIndex:contador];
    word.text = [dicionario.examples objectAtIndex:contador];
    figure.image = [dicionario.images objectAtIndex:contador];
    
    [super viewDidLoad];
    
}

- (void)trocandoPalavra {
    NSString *texto = textField.text;
    if ([texto  isEqual: @""]) {
        word.text = [dicionario.examples objectAtIndex:contador];
        [textField endEditing:YES];
    }
    else {
        [textField endEditing:YES];
        [dicionario trocaPalavra:texto atIndex:contador];
        word.text = [dicionario.examples objectAtIndex:contador];
    }
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
    textField.text = nil;
    
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
    textField.text = nil;
    
    figure.contentMode = UIViewContentModeScaleAspectFit;
    CGRect frame = figure.frame;
    frame.size.width = 100;
    figure.frame = frame;
}
@end

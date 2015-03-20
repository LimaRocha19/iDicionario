//
//  AlphabetView.h
//  Navigation
//
//  Created by Isaías Lima on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlphabetView : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *letter;
@property (strong, nonatomic) IBOutlet UILabel *word;
@property (strong, nonatomic) IBOutlet UIImageView *figure;


- (IBAction)next:(id)sender;
- (IBAction)previous:(id)sender;
- (void)trocandoPalavra;

@end

//
//  AlphabetView.h
//  Navigation
//
//  Created by Isaías Lima on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlphabetView : UIViewController

@property (nonatomic, strong) NSArray *alphabet;
@property (nonatomic, strong) NSArray *examples;
@property (nonatomic, strong) NSArray *images;
@property (strong, nonatomic) IBOutlet UILabel *letter;
@property (strong, nonatomic) IBOutlet UILabel *word;
@property (strong, nonatomic) IBOutlet UIImageView *figure;


- (IBAction)next:(id)sender;
- (IBAction)previous:(id)sender;

@end

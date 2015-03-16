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
@property (strong, nonatomic) IBOutlet UILabel *letter;

- (IBAction)next:(id)sender;
- (IBAction)previous:(id)sender;

@end

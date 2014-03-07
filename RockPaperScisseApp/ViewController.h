//
//  ViewController.h
//  RockPaperScisseApp
//
//  Created by Fikirte Derso on 3/7/14.
//  Copyright (c) 2014 Fikirte Derso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    NSString * userPlay;
    NSString * computerPlay;
}

@property (weak, nonatomic) IBOutlet UIImageView *userPickImage;
@property (weak, nonatomic) IBOutlet UIImageView *computerPickImage;
@property (weak, nonatomic) IBOutlet UILabel *showWinner;


@property (weak, nonatomic) IBOutlet UILabel *userPickLabel;
@property (weak, nonatomic) IBOutlet UILabel *computerPickLabel;

- (IBAction)rockClicked:(id)sender;
- (IBAction)paperClicked:(id)sender;
- (IBAction)scissorClikced:(id)sender;

@end

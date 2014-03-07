//
//  ViewController.m
//  RockPaperScisseApp
//
//  Created by Fikirte Derso on 3/7/14.
//  Copyright (c) 2014 Fikirte Derso. All rights reserved.
//

#import "ViewController.h"

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize userPickImage;
@synthesize computerPickImage;
@synthesize userPickLabel;
@synthesize computerPickLabel;
@synthesize showWinner;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rockClicked:(id)sender {
    
    
    self.userPickImage.image = [UIImage imageNamed:@"rock left.png"];
    userPlay = @"rock";
    [self computerRandomPlay];
    [self computeWinner];
    self.userPickLabel.text = userPlay;
    
    
}

- (IBAction)paperClicked:(id)sender {
    self.userPickImage.image = [UIImage imageNamed:@"paper left.png"];
    userPlay = @"paper";
    [self computerRandomPlay];
    [self computeWinner];
    self.userPickLabel.text = userPlay;
}

- (IBAction)scissorClikced:(id)sender {
    
    self.userPickImage.image = [UIImage imageNamed:@"scissors left.png"];
    userPlay = @"scissor";
    [self computerRandomPlay];
    [self computeWinner];
    self.userPickLabel.text = userPlay;
}

- (void)computerRandomPlay
{
    int randomPick;
    randomPick = arc4random()%(3);
    
    if(randomPick == 0)
    {
        self.computerPickImage.image = [UIImage imageNamed:@"paper.png"];
        computerPlay = @"paper";
        self.computerPickLabel.text = computerPlay;
    }
    if (randomPick == 1)
    {
        self.computerPickImage.image = [UIImage imageNamed:@"rock.png"];
        computerPlay = @"rock";
        self.computerPickLabel.text = computerPlay;
    }
    if(randomPick == 2)
    {
        self.computerPickImage.image = [UIImage imageNamed:@"scissors.png"];
        computerPlay = @"scissor";
        self.computerPickLabel.text = computerPlay;
    }
    
}

-(void) computeWinner{
    
    if(([userPlay isEqualToString:@"rock"] && [computerPlay isEqualToString:@"scissor"]) ||
       ([userPlay isEqualToString:@"scissor"] && [computerPlay isEqualToString:@"paper"]) ||
       ([userPlay isEqualToString:@"paper"] && [computerPlay isEqualToString:@"rock"]))
    {
        showWinner.text = @"You Win!!!";
    }
    if(([userPlay isEqualToString:@"rock"] && [computerPlay isEqualToString:@"paper"]) ||
       ([userPlay isEqualToString:@"scissor"] && [computerPlay isEqualToString:@"rock"]) ||
       ([userPlay isEqualToString:@"paper"] && [computerPlay isEqualToString:@"scissor"]))
    {
        showWinner.text = @"Computer Wins!!!";
    }
    if(([userPlay isEqualToString:@"rock"] && [computerPlay isEqualToString:@"rock"]) ||
       ([userPlay isEqualToString:@"scissor"] && [computerPlay isEqualToString:@"scissor"]) ||
       ([userPlay isEqualToString:@"paper"] && [computerPlay isEqualToString:@"paper"]))
    {
        showWinner.text = @"Its a Tie!";
    }
    
}


@end

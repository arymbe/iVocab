//
//  Game.h
//  iVocab
//
//  Created by arymbe on 4/19/14.
//  Copyright (c) 2014 arymbe. All rights reserved.
//

#import <UIKit/UIKit.h>

int WeeksLoaded, temp, QuestionSelected, ScoresNumbers, QuestionNumbers;
int CountNumber;
bool Answer1Correct, Answer2Correct, Answer3Correct, Answer4Correct, Answer5Correct, GameInProgress;


@interface Game : UIViewController
{
    IBOutlet UILabel *WeeksSelected;
    IBOutlet UILabel *Question;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UIButton *Answer5;
    IBOutlet UIButton *Next;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *Scores;
    IBOutlet UIImageView *Results;
    IBOutlet UILabel *QuestionNumber;
    IBOutlet UILabel *TimerDisplay;
    
    NSTimer *Timer;
}

-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(IBAction)Answer5:(id)sender;
-(void)Weeks1;
-(void)Weeks2;
-(void)Weeks3;
-(void)Weeks4;
-(void)Weeks5;
-(void)Weeks6;
-(void)Weeks7;
-(void)Weeks8;
-(void)Weeks9;
-(void)Weeks10;
-(void)Weeks11;
-(void)Weeks12;
-(void)Weeks13;
-(void)Weeks14;
-(void)Weeks15;
-(void)Weeks16;
-(void)Weeks17;
-(void)Special1;
-(void)Special2;
-(void)Special3;
-(void)Special4;
-(void)Special5;
-(void)Special6;
-(void)Special7;
-(void)RightAnswers;
-(void)WrongAnswers;
-(void)TimeOut;
-(void)TimerCount;



@end
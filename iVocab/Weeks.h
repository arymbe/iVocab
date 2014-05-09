//
//  Weeks.h
//  iVocab
//
//  Created by arymbe on 4/19/14.
//  Copyright (c) 2014 arymbe. All rights reserved.
//

#import <UIKit/UIKit.h>

int Weeks1Number,Weeks2Number, SpecialNumber;
int Weeks1Selected,Weeks2Selected, SpecialSelected;
bool GameInProgress;

@interface Weeks : UIViewController
{
    IBOutlet UIButton *Weeks1;
    IBOutlet UIButton *Weeks2;
    IBOutlet UIButton *Special;
    IBOutlet UILabel *DateLabel;
    NSString *CurrentDate;
}

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;
-(IBAction)Button3:(id)sender;
-(IBAction)Button4:(id)sender;

@end

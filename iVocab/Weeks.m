//
//  Weeks.m
//  iVocab
//
//  Created by arymbe on 4/19/14.
//  Copyright (c) 2014 arymbe. All rights reserved.
//

#import "Weeks.h"

@interface Weeks ()

@end

@implementation Weeks

-(IBAction)Button1:(id)sender
{
    [ [NSUserDefaults standardUserDefaults] setInteger:Weeks1Selected forKey:@"WeeksSaved" ];
}

-(IBAction)Button2:(id)sender
{
    [ [NSUserDefaults standardUserDefaults] setInteger:Weeks2Selected forKey:@"WeeksSaved" ];
}

-(IBAction)Button3:(id)sender
{
    GameInProgress = NO;
}

-(IBAction)Button4:(id)sender
{
    [ [NSUserDefaults standardUserDefaults] setInteger:SpecialSelected forKey:@"WeeksSaved" ];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    Weeks1Number = (arc4random()%8);
    Weeks2Number = ( (arc4random()%8) +7);
    SpecialNumber = (arc4random()%7);
    
    switch (Weeks1Number)
    {
        case 0:
            [Weeks1 setTitle:@"6 - 12 January" forState:UIControlStateNormal];
            Weeks1Selected = 1;
            break;
        case 1:
            [Weeks1 setTitle:@"13 - 19 January" forState:UIControlStateNormal];
            Weeks1Selected = 2;
            break;
        case 2:
            [Weeks1 setTitle:@"20 - 26 January" forState:UIControlStateNormal];
            Weeks1Selected = 3;
            break;
        case 3:
            [Weeks1 setTitle:@"27 January - 2 February" forState:UIControlStateNormal];
            Weeks1Selected = 4;
            break;
        case 4:
            [Weeks1 setTitle:@"3 - 9 February" forState:UIControlStateNormal];
            Weeks1Selected = 5;
            break;
        case 5:
            [Weeks1 setTitle:@"10 - 16 February" forState:UIControlStateNormal];
            Weeks1Selected = 6;
            break;
        case 6:
            [Weeks1 setTitle:@"17 - 23 February" forState:UIControlStateNormal];
            Weeks1Selected = 7;
            break;
        case 7:
            [Weeks1 setTitle:@"24 February - 2 March" forState:UIControlStateNormal];
            Weeks1Selected = 8;
            break;
        case 8:
            [Weeks1 setTitle:@"3 - 9 March" forState:UIControlStateNormal];
            Weeks1Selected = 9;
            break;
        case 9:
            [Weeks1 setTitle:@"10 - 16 March" forState:UIControlStateNormal];
            Weeks1Selected = 10;
            break;
        case 10:
            [Weeks1 setTitle:@"17 - 23 March" forState:UIControlStateNormal];
            Weeks1Selected = 11;
            break;
        case 11:
            [Weeks1 setTitle:@"24 - 30 March" forState:UIControlStateNormal];
            Weeks1Selected = 12;
            break;
        case 12:
            [Weeks1 setTitle:@"31 March - 6 April" forState:UIControlStateNormal];
            Weeks1Selected = 13;
            break;
        case 13:
            [Weeks1 setTitle:@"7 - 13 April" forState:UIControlStateNormal];
            Weeks1Selected = 14;
            break;
        case 14:
            [Weeks1 setTitle:@"14 - 20 April" forState:UIControlStateNormal];
            Weeks1Selected = 15;
            break;
        case 15:
            [Weeks1 setTitle:@"21 - 27 April" forState:UIControlStateNormal];
            Weeks1Selected = 16;
            break;
        case 16:
            [Weeks1 setTitle:@"28 April - 3 Mei" forState:UIControlStateNormal];
            Weeks1Selected = 17;
            break;
        default:
            break;
    }
    
    switch (Weeks2Number)
    {
        case 0:
            [Weeks2 setTitle:@"6 - 12 January" forState:UIControlStateNormal];
            Weeks2Selected = 1;
            break;
        case 1:
            [Weeks2 setTitle:@"13 - 19 January" forState:UIControlStateNormal];
            Weeks2Selected = 2;
            break;
        case 2:
            [Weeks2 setTitle:@"20 - 26 January" forState:UIControlStateNormal];
            Weeks2Selected = 3;
            break;
        case 3:
            [Weeks2 setTitle:@"27 January - 2 February" forState:UIControlStateNormal];
            Weeks2Selected = 4;
            break;
        case 4:
            [Weeks2 setTitle:@"3 - 9 February" forState:UIControlStateNormal];
            Weeks2Selected = 5;
            break;
        case 5:
            [Weeks2 setTitle:@"10 - 16 February" forState:UIControlStateNormal];
            Weeks2Selected = 6;
            break;
        case 6:
            [Weeks2 setTitle:@"17 - 23 February" forState:UIControlStateNormal];
            Weeks2Selected = 7;
            break;
        case 7:
            [Weeks2 setTitle:@"24 February - 2 March" forState:UIControlStateNormal];
            Weeks2Selected = 8;
            break;
        case 8:
            [Weeks2 setTitle:@"3 - 9 March" forState:UIControlStateNormal];
            Weeks2Selected = 9;
            break;
        case 9:
            [Weeks2 setTitle:@"10 - 16 March" forState:UIControlStateNormal];
            Weeks2Selected = 10;
            break;
        case 10:
            [Weeks2 setTitle:@"17 - 23 March" forState:UIControlStateNormal];
            Weeks2Selected = 11;
            break;
        case 11:
            [Weeks2 setTitle:@"24 - 30 March" forState:UIControlStateNormal];
            Weeks2Selected = 12;
            break;
        case 12:
            [Weeks2 setTitle:@"31 March - 6 April" forState:UIControlStateNormal];
            Weeks2Selected = 13;
            break;
        case 13:
            [Weeks2 setTitle:@"7 - 13 April" forState:UIControlStateNormal];
            Weeks2Selected = 14;
            break;
        case 14:
            [Weeks2 setTitle:@"14 - 20 April" forState:UIControlStateNormal];
            Weeks2Selected = 15;
            break;
        case 15:
            [Weeks1 setTitle:@"21 - 27 April" forState:UIControlStateNormal];
            Weeks1Selected = 16;
            break;
        case 16:
            [Weeks1 setTitle:@"28 April - 3 Mei" forState:UIControlStateNormal];
            Weeks1Selected = 17;
            break;
            default:
            break;
    }
    
    switch (SpecialNumber)
    {
        case 0:
            [Special setTitle:@"Civil War I" forState:UIControlStateNormal];
            SpecialSelected = 101;
            break;
        case 1:
            [Special setTitle:@"Civil War II" forState:UIControlStateNormal];
            SpecialSelected = 102;
            break;
        case 2:
            [Special setTitle:@"Civil War III" forState:UIControlStateNormal];
            SpecialSelected = 102;
            break;
        case 3:
            [Special setTitle:@"Secrets of Silicon Valley" forState:UIControlStateNormal];
            SpecialSelected = 104;
            break;
        case 4:
            [Special setTitle:@"I Am Zlatan" forState:UIControlStateNormal];
            SpecialSelected = 105;
            break;
        case 5:
            [Special setTitle:@"Personaility Traits (Negative)" forState:UIControlStateNormal];
            SpecialSelected = 106;
            break;
        case 6:
            [Special setTitle:@"Personaility Traits (Positive)" forState:UIControlStateNormal];
            SpecialSelected = 107;
            break;
        default:
            break;
    }

    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-YYYY"];
    CurrentDate = [formatter stringFromDate:[NSDate date]];
    DateLabel.text = CurrentDate;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

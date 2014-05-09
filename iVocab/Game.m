//
//  Game.m
//  iVocab
//
//  Created by arymbe on 4/19/14.
//  Copyright (c) 2014 arymbe. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)TimerCount
{
    if (CountNumber==1)
    {
        [Timer invalidate];
        [self TimeOut];
    }
    CountNumber = CountNumber - 1;
    TimerDisplay.text = [NSString stringWithFormat:@"%i",CountNumber];
}

-(void)RightAnswers
{
    ScoresNumbers = ScoresNumbers + 10;
    Scores.text = [NSString stringWithFormat:@"%i", ScoresNumbers];
    QuestionNumbers = QuestionNumbers + 1;
    QuestionNumber.text = [NSString stringWithFormat:@"%i", QuestionNumbers];
    Next.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    Answer5.hidden = YES;
    Question.hidden = YES;
    WeeksSelected.hidden = YES;
    CountNumber=5;
    TimerDisplay.hidden = YES;
    Results.hidden = NO;
    Results.image = [UIImage imageNamed:@"right.jpg"];
    if (QuestionNumbers == 20)
    {
        Exit.hidden = NO;
        GameInProgress = NO;
        Next.hidden = YES;
        Results.hidden = YES;
    }
}
-(void)WrongAnswers
{
    ScoresNumbers = ScoresNumbers - 10;
    Scores.text = [NSString stringWithFormat:@"%i", ScoresNumbers];
    QuestionNumbers = QuestionNumbers + 1;
    QuestionNumber.text = [NSString stringWithFormat:@"%i", QuestionNumbers];
    Next.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    Answer5.hidden = YES;
    Question.hidden = YES;
    WeeksSelected.hidden = YES;
    CountNumber=5;
    TimerDisplay.hidden = YES;
    Results.hidden = NO;
    Results.image = [UIImage imageNamed:@"wrong.jpg"];
    if (QuestionNumbers == 20)
    {
        Exit.hidden = NO;
        GameInProgress = NO;
        Next.hidden = YES;
        Results.hidden = YES;
    }
}

-(void)TimeOut
{
    ScoresNumbers = ScoresNumbers + 0;
    Scores.text = [NSString stringWithFormat:@"%i", ScoresNumbers];
    QuestionNumbers = QuestionNumbers + 1;
    QuestionNumber.text = [NSString stringWithFormat:@"%i", QuestionNumbers];
    Next.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    Answer5.hidden = YES;
    Question.hidden = YES;
    WeeksSelected.hidden = YES;
    CountNumber=5;
    TimerDisplay.hidden = YES;
    Results.hidden = YES;
    if (QuestionNumbers == 20)
    {
        Exit.hidden = NO;
        GameInProgress = NO;
        Next.hidden = YES;
        Results.hidden = YES;
    }
}

-(IBAction)Answer1:(id)sender
{
    [Timer invalidate];
    if (Answer1Correct == YES)
    {
        [self RightAnswers];
    } else
    {
        [self WrongAnswers];
    }
}
-(IBAction)Answer2:(id)sender
{
    [Timer invalidate];
    if (Answer2Correct == YES)
    {
        [self RightAnswers];
    } else
    {
        [self WrongAnswers];
    }
}
-(IBAction)Answer3:(id)sender
{
    [Timer invalidate];
    if (Answer3Correct == YES)
    {
        [self RightAnswers];
    } else
    {
        [self WrongAnswers];
    }
}
-(IBAction)Answer4:(id)sender
{
    [Timer invalidate];
    if (Answer4Correct == YES)
    {
        [self RightAnswers];
    } else
    {
        [self WrongAnswers];
    }
}
-(IBAction)Answer5:(id)sender
{
    [Timer invalidate];
    if (Answer5Correct == YES)
    {
        [self RightAnswers];
    } else
    {
        [self WrongAnswers];
    }
}

-(void)Weeks1
{
    switch (QuestionSelected)
    {
        case 0:
            Question.text = [NSString stringWithFormat:@"Allege\n(əˈlej)"];
            [Answer1 setTitle:@"Detail" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Accuse" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Force" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Compliment" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Rigorous" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 1:
            Question.text = [NSString stringWithFormat:@"Elaborate\n(iˈlab(ə)rit)"];
            [Answer1 setTitle:@"Force" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Detail" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Transmission" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Resolve" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Foist" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            Question.text = [NSString stringWithFormat:@"Encounter\n(enˈkoun(t)ər)"];
            [Answer1 setTitle:@"Compliant" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Praise" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Compliment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Meet" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Shrink" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 3:
            Question.text = [NSString stringWithFormat:@"Flatter\n(ˈflatər)"];
            [Answer1 setTitle:@"Cater" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Willing" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Praise" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Favor" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Endowment" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 4:
            Question.text = [NSString stringWithFormat:@"Gauge\n(gāj)"];
            [Answer1 setTitle:@"In-Depth" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Convey" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Stumble" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lean Back" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Measuring Device" forState:UIControlStateNormal];
            Answer5Correct = YES;
            break;
        case 5:
            Question.text = [NSString stringWithFormat:@"Grasp\n(grasp)"];
            [Answer1 setTitle:@"Grip" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Force" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Impose" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Foist" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Sort Out" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 6:
            Question.text = [NSString stringWithFormat:@"Thorough\n(ˈTHərō)"];
            [Answer1 setTitle:@"Impose" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Force" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Depict" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Recline" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Rigorous" forState:UIControlStateNormal];
            Answer5Correct = YES;
            break;
        case 7:
            Question.text = [NSString stringWithFormat:@"Settle\n(ˈsetl)"];
            [Answer1 setTitle:@"Portray" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Elaborate" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sip" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Resolve" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Abstain From" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 8:
            Question.text = [NSString stringWithFormat:@"Relay\n(ˈrēˌlā)"];
            [Answer1 setTitle:@"Stash" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Broadcast" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Complimentary" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Foist" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Fierce" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 9:
            Question.text = [NSString stringWithFormat:@"Impose\n(imˈpōz)"];
            [Answer1 setTitle:@"Force" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Compliment" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Endowment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Prominent" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Mischievous" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        default:
            break;
    }
}
-(void)Weeks2
{
    switch (QuestionSelected)
    {
        case 0:
            Question.text = [NSString stringWithFormat:@"Cater\n(ˈkātər)"];
            [Answer1 setTitle:@"Swamp" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Reserve" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ready" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Serve" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Kindness" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 1:
            Question.text = [NSString stringWithFormat:@"Depict\n(diˈpikt)"];
            [Answer1 setTitle:@"Resolve" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Accuse" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Detail" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Portray" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Rigorous" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 2:
            Question.text = [NSString stringWithFormat:@"Endowment\n(enˈdoumənt)"];
            [Answer1 setTitle:@"Settlement" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Unheard Of" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Funding" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Shutdown" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Distinguish" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            Question.text = [NSString stringWithFormat:@"Immerse\n(iˈmərs)"];
            [Answer1 setTitle:@"Decrease" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Accuse" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Measure" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Clutch" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Submerge" forState:UIControlStateNormal];
            Answer5Correct = YES;
            break;
        case 4:
            Question.text = [NSString stringWithFormat:@"Overwhelm\n(ˌōvərˈ(h)welm)"];
            [Answer1 setTitle:@"Overhaul" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Helm" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Run Into" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Complex" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Swamp" forState:UIControlStateNormal];
            Answer5Correct = YES;
            break;
        case 5:
            Question.text = [NSString stringWithFormat:@"Scheme\n(skēm)"];
            [Answer1 setTitle:@"Elaborate" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Strew" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Plan" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Stash" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Claim" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 6:
            Question.text = [NSString stringWithFormat:@"Sip\n(sip)"];
            [Answer1 setTitle:@"Dinner" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Drink Slowly" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Drink" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Offspring" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Dismissive" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 7:
            Question.text = [NSString stringWithFormat:@"Stumble\n(ˈstəmbəl)"];
            [Answer1 setTitle:@"Appease" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Placate" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Vicious" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Slip" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Shrink" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 8:
            Question.text = [NSString stringWithFormat:@"Unprecedented\n(ˌənˈpresəˌdəntid)"];
            [Answer1 setTitle:@"Profusion" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ferocious" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Unheard Of" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Strew" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Stroll" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 9:
            Question.text = [NSString stringWithFormat:@"Willing\n(ˈwiliNG)"];
            [Answer1 setTitle:@"Represent" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Compliant" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Cape" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Pledge" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Promise" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        default:
            break;
    }
}
-(void)Weeks3
{
    switch (QuestionSelected)
    {
        case 0:
            Question.text = [NSString stringWithFormat:@"Closure\n(ˈklōZHər)"];
            [Answer1 setTitle:@"Stash" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Decrease" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Relay" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Elaborate" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Closing Down" forState:UIControlStateNormal];
            Answer5Correct = YES;
            break;
        case 1:
            Question.text = [NSString stringWithFormat:@"Complimentary\n(ˌkämpləˈmentərē)"];
            [Answer1 setTitle:@"Free" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Important" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Praise" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Plan" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Rigor" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 2:
            Question.text = [NSString stringWithFormat:@"Dismissive\n(disˈmisiv)"];
            [Answer1 setTitle:@"Depict" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lean Back" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Complex" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Abstain From" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Scornful" forState:UIControlStateNormal];
            Answer5Correct = YES;
            break;
        case 3:
            Question.text = [NSString stringWithFormat:@"Eminent\n(ˈemənənt)"];
            [Answer1 setTitle:@"Prominent" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Distinguished" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Imitation" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Backlash" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Fierce" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 4:
            Question.text = [NSString stringWithFormat:@"Established\n(iˈstabliSHt)"];
            [Answer1 setTitle:@"Accepted" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Cull" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Lie" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Portray" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Leverage" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 5:
            Question.text = [NSString stringWithFormat:@"Favor\n(ˈfāvər )"];
            [Answer1 setTitle:@"Habitual" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Badly Behaved" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Service" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Shutdown" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Lean Back" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 6:
            Question.text = [NSString stringWithFormat:@"Mischievous\n(ˈmisCHivəs)"];
            [Answer1 setTitle:@"Panury" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Well-Known" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Appear" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Naughty" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Maintain" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 7:
            Question.text = [NSString stringWithFormat:@"Recline\n(riˈklīn)"];
            [Answer1 setTitle:@"Appease" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lie" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Submerge" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Slip" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Shrink" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 8:
            Question.text = [NSString stringWithFormat:@"Refrain\n(riˈfrān)"];
            [Answer1 setTitle:@"Allege" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Force" forState:UIControlStateNormal];
            [Answer3 setTitle:@"In-Depth" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Oath" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Hold Back From" forState:UIControlStateNormal];
            Answer5Correct = YES;
            break;
        case 9:
            Question.text = [NSString stringWithFormat:@"Wane\n(wān)"];
            [Answer1 setTitle:@"Strategy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Flourish" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Decrease" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Financing" forState:UIControlStateNormal];
            [Answer5 setTitle:@"Alter" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        default:
            break;
    }
}
-(void)Weeks4
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Abundance\n(əˈbəndəns)"];
                [Answer1 setTitle:@"Profusion" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Choose" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Compulsory" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Earlier" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Influence" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Appease\n(əˈpēz)"];
                [Answer1 setTitle:@"Copiusness" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Conciliate" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Give Rise To" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Do" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Strew" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Backlash\n(ˈbakˌlaSH)"];
                [Answer1 setTitle:@"Have In Mind" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Unheard Of" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Enthrall" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Undertake" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Adverse Reaction" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Counterfeit\n(ˈkountərˌfit)"];
                [Answer1 setTitle:@"Closure" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Fake" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Funding" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Weather" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Sink" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Cull\n(kəl)"];
                [Answer1 setTitle:@"Select" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Evoke" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Conjure Up" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Spawn" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Imitation" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Fierce\n(fi(ə)rs)"];
                [Answer1 setTitle:@"Come Out" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Ferocious" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Seduce" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Taboo" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Incest" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Offspring\n(ˈôfˌspriNG)"];
                [Answer1 setTitle:@"Children" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Closing Down" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Choose" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Save" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Penury" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Prominent\n(ˈprämənənt)"];
                [Answer1 setTitle:@"Strew" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Kindness" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Endowment" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Eminent" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Important" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Scatter\n(ˈskatər)"];
                [Answer1 setTitle:@"Pledge" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Severe" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Habit" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Scornful" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Spread" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Stash\n(staSH)"];
                [Answer1 setTitle:@"Acute" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Placate" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Cape" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Store" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Foreland" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks5
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Distinct\n(disˈtiNGkt)"];
                [Answer1 setTitle:@"Divorce" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Force" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Different" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Appear" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Conciliate" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Emerge\n(iˈmərj)"];
                [Answer1 setTitle:@"Solve" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Come Out" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Previous" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Enclose" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Acute" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Evoke\n(iˈvōk)"];
                [Answer1 setTitle:@"Bring To Mind" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Adverse Response" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Well-Known" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Enthrall" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Give Rise To" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Overhaul\n(ˌōvərˈhôl)"];
                [Answer1 setTitle:@"Overwhelm" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Service" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Stroll" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Swamp" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Captivate" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Peninsula\n(pəˈninsələ)"];
                [Answer1 setTitle:@"Cape" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Penury" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Select" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Land" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Foreland" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Poverty\n(ˈpävərtē)"];
                [Answer1 setTitle:@"Stream" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Seduce" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Talent" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Pressure" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Beggary" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Prohibited\n(prəˈhibitid)"];
                [Answer1 setTitle:@"Peak" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Illegal" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Very Bad" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Engender" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Legal" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Inflict\n(inˈflikt)"];
                [Answer1 setTitle:@"Impact" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Charm" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Conflict" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Create" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Imitation" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Vow\n(vou)"];
                [Answer1 setTitle:@"Weak" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Spawn" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Offender" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Oath" forState:UIControlStateNormal];
                [Answer5 setTitle:@"behavior" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Wander\n(ˈwändər)"];
                [Answer1 setTitle:@"Alter" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Stray" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Stroll" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Skillful" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Charm" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks6
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Captivate\n(ˈkaptəˌvāt)"];
                [Answer1 setTitle:@"Service" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Disclose" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Enclose" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Enthrall" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Create" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Confine\n(kənˈfīn )"];
                [Answer1 setTitle:@"Emerge" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Cape" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ferocious" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Adverse" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Imprison" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Leverage\n(ˈlev(ə)rij)"];
                [Answer1 setTitle:@"Charm" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Undertake" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Engender" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Crime" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Influence" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Mandatory\n(ˈmandəˌtôrē)"];
                [Answer1 setTitle:@"Have In Mind" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Bad" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Proficient" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Obligatory" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Very Bad" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Necessary\n(ˈnesəˌserē)"];
                [Answer1 setTitle:@"Overstate" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Peak" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Climax" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Important" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Unfavorable" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Pledge\n(plej)"];
                [Answer1 setTitle:@"Foreland" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Promise" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Offender" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Exaggerate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Wander Off" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Prior\n(ˈprīər)"];
                [Answer1 setTitle:@"Undertake" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Memory" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Earlier" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Disadvantageous" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Dismissive" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Severe\n(səˈvi(ə)r)"];
                [Answer1 setTitle:@"Abuse" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Oppress" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Acute" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Adjust" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Persecute" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Spawn\n(spôn)"];
                [Answer1 setTitle:@"Groundbreaking" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Badly Behaved" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Unheard Of" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Give Rise To" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Stroll" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Tackle\n(ˈtakəl)"];
                [Answer1 setTitle:@"Represent" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Do" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Convey" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Simmer" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks7
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Adverse\n(adˈvərs)"];
                [Answer1 setTitle:@"Unfavorable" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Overemphasize" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Stark" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Overstate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Skilled" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Conduct\n(ˈkänˌdəkt )"];
                [Answer1 setTitle:@"Thrive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Execute" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Behavior" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Strive" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Persecute" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Culmination\n(ˌkəlməˈnāSHən)"];
                [Answer1 setTitle:@"Climax" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Decent" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Skillful" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Thrifty" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Well-Focused" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Emphasis\n(ˈemfəsis)"];
                [Answer1 setTitle:@"Mutter" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Pry" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Pressure" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Adjust" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Submerge" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Exaggerate\n(igˈzajəˌrāt)"];
                [Answer1 setTitle:@"Overstate" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Overwhelm" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Overhaul" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Complex" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Overemphasize" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Flair\n(fler)"];
                [Answer1 setTitle:@"Thinking" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Decent" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Talent" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Detail" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Implode" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Intend\n(inˈtend)"];
                [Answer1 setTitle:@"Appeal" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Attention" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Mean" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Notion" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Behavior" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Offender\n(əˈfendər)"];
                [Answer1 setTitle:@"Appease" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Abuse" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Vicious" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Violent" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Lawbreaker" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Pour\n(pôr)"];
                [Answer1 setTitle:@"Charm" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Flow" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Transport" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Strew" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Hobbling" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Proficient\n(prəˈfiSHənt)"];
                [Answer1 setTitle:@"Skillful" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Foist" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Strategy" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Compliant" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Complex" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks8
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Attuned\n(əˈt(y)o͞on)"];
                [Answer1 setTitle:@"Attain" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Knack" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Adapt" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Serve" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Be Curious" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Entice\n(enˈtīs)"];
                [Answer1 setTitle:@"Attract" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Accuse" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Deception" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Lessen" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Inception" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Frivolous\n(ˈfrivələs)"];
                [Answer1 setTitle:@"Conduct" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Enclose" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Dwell" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Silly" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Exaggerate" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Frugal\n(ˈfro͞ogəl)"];
                [Answer1 setTitle:@"Booze" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Worried" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Blossom" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Complain" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Thrifty" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Impersonation\n(imˌpərsəˈnāSHən)"];
                [Answer1 setTitle:@"Proponent" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Obsolete" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Concoct" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Imitation" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Swamp" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Implode\n(imˈplōd)"];
                [Answer1 setTitle:@"Execute" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Alcoholic" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Concerned" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Explode" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Keen" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Oppress\n(əˈpres)"];
                [Answer1 setTitle:@"Persecute" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Pressure" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Alter" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Unload" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Induce" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Retention\n(riˈtenCHən)"];
                [Answer1 setTitle:@"Diminish" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Memory" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Prompt" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Fraudulence" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Evaluate" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Revamp\n(rēˈvamp)"];
                [Answer1 setTitle:@"Abundance" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Prominent" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Endowment" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Change" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Important" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Stray\n(strā)"];
                [Answer1 setTitle:@"Ash" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Get Lost" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Filthy" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Keen" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Dwell" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks9
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Cease\n(sēs)"];
                [Answer1 setTitle:@"Well-Focused" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Mutter" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Be Curious" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Come to an End" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Wander Off" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Decent\n(ˈdēsənt)"];
                [Answer1 setTitle:@"Surreal" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Rigor" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Seductive" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Proper" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Thrifty" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Diminish\n(diˈminiSH)"];
                [Answer1 setTitle:@"Decrease" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Careless" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Hobbling" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Smug" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Eager\n(ˈēgər)"];
                [Answer1 setTitle:@"Closure" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Leverage" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Keen" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Flourish" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Inflict" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Grubby\n(ˈgrəbē)"];
                [Answer1 setTitle:@"Neglect" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Abandon" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Appropriate" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Dirty" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Crook" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Knack\n(nak)"];
                [Answer1 setTitle:@"Talent" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Oppress" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Plan" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Choose" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Stray" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Notion\n(ˈnōSHən)"];
                [Answer1 setTitle:@"Engender" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Enclose" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Idea" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Endeavor" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Stroll" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Stark\n(stärk)"];
                [Answer1 setTitle:@"Reckon" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Thrill" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Smart" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Sharp" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Calculate" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Strive\n(strīv)"];
                [Answer1 setTitle:@"Eager" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Work" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Enthusiastic" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Try Hard" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Flair" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Thrive\n(THrīv)"];
                [Answer1 setTitle:@"Palpable" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Flourish" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Simmer" forState:UIControlStateNormal];
                [Answer4 setTitle:@"So One's Best" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Stray" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks10
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Anxious\n(ˈaNG(k)SHəs)"];
                [Answer1 setTitle:@"Confuse" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Sick" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Worried" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Strange" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Lame" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Assess\n(əˈses)"];
                [Answer1 setTitle:@"Rate" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Accuse" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Smug" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ferocious" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Gluttonous" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Booze\n(bo͞oz)"];
                [Answer1 setTitle:@"Hangover" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Cease" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Bitch" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Alcoholic Drink" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Boobs" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Fraud\n(frôd)"];
                [Answer1 setTitle:@"Count (Up)" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Weird" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Be Curious" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Deception" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Cheat" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Grumble\n(ˈgrəmbəl)"];
                [Answer1 setTitle:@"Conflict" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Attuned" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Inflict" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Diminish" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Complain" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Induce\n(inˈd(y)o͞os)"];
                [Answer1 setTitle:@"Cause" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Proficient" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Favor" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Compliant" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Wane" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Keen\n(kēn)"];
                [Answer1 setTitle:@"Sharp" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Excitement" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Alluring" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Polite" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Tempting" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Musing\n(ˈmyo͞oziNG)"];
                [Answer1 setTitle:@"Utter" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Elaborate" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Persuade" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Thinking" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Depict" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Pry\n(prī)"];
                [Answer1 setTitle:@"Unload" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Mull" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Mediation" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Inception" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Echo" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Prompt\n(prämpt)"];
                [Answer1 setTitle:@"Obvious" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Vivid" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Rash" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Assess" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Induce" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks11
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Assign\n(əˈsīn)"];
                [Answer1 setTitle:@"Tangible" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Ravenous" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Concoct" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Allocate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Pour" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Bloke\n(blōk)"];
                [Answer1 setTitle:@"In-Depth" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Foist" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Meet" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Claim" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Man" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Crook\n(kro͝ok)"];
                [Answer1 setTitle:@"Steal" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Nick" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Cheat" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Chuck" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Criminal" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Dwell\n(dwel)"];
                [Answer1 setTitle:@"Live" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Unreal" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Reverberation" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Hobbling" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Acute" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Mull\n(məl)"];
                [Answer1 setTitle:@"Keen" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Consider" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Utter" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Complex" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Grumble" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Neglect\n(niˈglekt)"];
                [Answer1 setTitle:@"Induce" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Abandon" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Prompt" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Grubby" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Enthrall" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Reckon\n(ˈrekən)"];
                [Answer1 setTitle:@"Stark" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Bizarre" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Shortage" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Small" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Calculate" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Seductive\n(siˈdəktiv)"];
                [Answer1 setTitle:@"Pleased" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Seduction" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Alluring" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Musing" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Induce" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Thrill\n(THril)"];
                [Answer1 setTitle:@"Excitement" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Skillful" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Tempting" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Eager" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Oppress" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Vivid\n(ˈvivid)"];
                [Answer1 setTitle:@"Obvious" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Prohibited" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Dirty" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Weird" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Be Curious" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks12
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Bizarre\n(biˈzär)"];
                [Answer1 setTitle:@"Thunder" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Smoke" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Strange" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Blizzard" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Hazard" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Chuck\n(CHək)"];
                [Answer1 setTitle:@"Allege" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Criminal" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Tug" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Throw" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Nick" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Complacent\n(kəmˈplāsənt)"];
                [Answer1 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Compliment" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Excitement" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Endowment" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Smug" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Convey\n(kənˈvā)"];
                [Answer1 setTitle:@"Rash" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Careless" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Carry" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Calculate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Examination" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Echo\n(ˈekō)"];
                [Answer1 setTitle:@"Complex" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Thorough" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ready" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Reverberation" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Swamp" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Establish\n(iˈstabliSH)"];
                [Answer1 setTitle:@"Set Up" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Refrain" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Engender" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Acute" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Lean Back" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Lame\n(lām)"];
                [Answer1 setTitle:@"Try Hard" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Outdated" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Strictness" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Hobbling" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Dismissive" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Probe\n(prōb)"];
                [Answer1 setTitle:@"Obsolete" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Worried" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Fraud" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Investigation" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Advocate" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Reckless\n(ˈrekləs)"];
                [Answer1 setTitle:@"Knack" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Violent" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Sharp" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Thrifty" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Careless" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Surreal\n(səˈrēəl)"];
                [Answer1 setTitle:@"Gluttonous" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Supporter" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Weird" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Implode" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Frugal" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks13
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Breadth\n(bredTH)"];
                [Answer1 setTitle:@"Try Hard" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Width" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Assign" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Sort Out" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Concoct\n(kənˈkäkt)"];
                [Answer1 setTitle:@"Make" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Rigor" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ready" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Give" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Bring" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Endeavor\n(enˈdevər)"];
                [Answer1 setTitle:@"Thrive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Strive" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Probe" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Echo" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Mull" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Greedy\n(ˈgrēdē)"];
                [Answer1 setTitle:@"Neglect" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Probe" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Convey" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Abandon" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Ravenous" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Obsolete\n(ˌäbsəˈlēt)"];
                [Answer1 setTitle:@"Agreement" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Absolute" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Obligatory" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Reckon" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Outdated" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Proponent\n(prəˈpōnənt)"];
                [Answer1 setTitle:@"Grip" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Force" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Impose" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Foist" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Advocate" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Rigor\n(ˈrigər)"];
                [Answer1 setTitle:@"Lack" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Strictness" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Palpable" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Peculiar" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Echo" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Scarcity\n(ˈskersitē)"];
                [Answer1 setTitle:@"Shortage" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Simmer" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Set Up" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Booze" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Sort" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Seething\n(sēT͟H)"];
                [Answer1 setTitle:@"Toss" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Reverberation" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Force" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Boil" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Alluring" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Tangible\n(ˈtanjəbəl)"];
                [Answer1 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Deception" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Mischievous" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Touchable" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Tempting" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks14
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Arbitrary\n(ˈärbiˌtrerē)"];
                [Answer1 setTitle:@"Diplomat" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Dictatorial" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Rigorous" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Important" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Naughty" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Commit\n(kəˈmit)"];
                [Answer1 setTitle:@"Throw" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Execute" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Allocate" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Give" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Try" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Compelling\n(kəmˈpeliNG)"];
                [Answer1 setTitle:@"Captivating" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Happy" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Excitement" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Endowment" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Impact" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Enroll\n(enˈrōl)"];
                [Answer1 setTitle:@"Get" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Study" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Register" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Sign In" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Strive" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Envoy\n(ˈenˌvoi)"];
                [Answer1 setTitle:@"Carry" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Examination" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Evaluate" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ambassador" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Convey" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Foremost\n(ˈfôrˌmōst)"];
                [Answer1 setTitle:@"Often" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Echo" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Lay" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Lean Back" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Premier" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Omission\n(ōˈmiSHən)"];
                [Answer1 setTitle:@"Abuse" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Seductive" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Neglect" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Persecute" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Musing" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Plea\n(plē)"];
                [Answer1 setTitle:@"Charm" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Worried" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Mesmerize" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Deletion" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Appeal" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Steady\n(ˈstedē)"];
                [Answer1 setTitle:@"Ready" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Prepare" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Stable" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ferocious" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Induce" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Supper\n(ˈsəpər)"];
                [Answer1 setTitle:@"Ambitious" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Power" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Breakfast" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Brunch" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Dinner" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
                
            default:
                break;
        }
    }
}
-(void)Weeks15
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Acquaint\n(əˈkwānt)"];
                [Answer1 setTitle:@"Echo" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Friend" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Introduce" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Enemy" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Encounter" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Conceive\n(kənˈsēv)"];
                [Answer1 setTitle:@"Receive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Bright" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Deceive" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Attune" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Think" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Demeanor\n(diˈmēnər)"];
                [Answer1 setTitle:@"Ready" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Arbitrary " forState:UIControlStateNormal];
                [Answer3 setTitle:@"Manner" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Frivolous " forState:UIControlStateNormal];
                [Answer5 setTitle:@"Revamp" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Encroaching\n(enˈkrōCH)"];
                [Answer1 setTitle:@"Adrenaline rush" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Adverse Response" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Disadvantageous" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Intrude On" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Lose One's Balance" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Establishment\n(iˈstabliSHmənt)"];
                [Answer1 setTitle:@"Vivid " forState:UIControlStateNormal];
                [Answer2 setTitle:@"Accepted" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ready" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Familiarize " forState:UIControlStateNormal];
                [Answer5 setTitle:@"Formation" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Invoke\n(inˈvōk)"];
                [Answer1 setTitle:@"Ask" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Want" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Give" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Provoke" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Battle" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Levy\n(ˈlevē)"];
                [Answer1 setTitle:@"Probe" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Convict" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Investigation" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Toll" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Fraud" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Placid\n(ˈplasid)"];
                [Answer1 setTitle:@"Curious" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Anxious" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Calm" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Mud" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Pry" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Poaching\n(pōCH)"];
                [Answer1 setTitle:@"Backlash" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Probe" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Shoot" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Stay" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Hunt Illegally" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Quench\n(kwenCH)"];
                [Answer1 setTitle:@"Tremble" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Satisfy" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Faith" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Assess" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Oppress" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
                
            default:
                break;
        }
    }
}

-(void)Weeks16
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Ample\n(ˈampəl)"];
                [Answer1 setTitle:@"Gluttonous" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Hungry" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Enough" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Vanquish" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Experience" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Daunt\n(dônt)"];
                [Answer1 setTitle:@"Encourage" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Discourage" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Courage" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Kind" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Smart" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Hassle\n(ˈhasəl)"];
                [Answer1 setTitle:@"Inconvenience" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Embellish" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Soberness" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Unfavorable" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Quench" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Inculcate\n(inˈkəlˌkāt)"];
                [Answer1 setTitle:@"Still" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Save" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Deception" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Tranquil" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Instill" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Perpetrate\n(ˈpərpəˌtrāt)"];
                [Answer1 setTitle:@"Commit" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Embellish" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Invest" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Trespass" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Endure" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Repeal\n(riˈpēl)"];
                [Answer1 setTitle:@"Think" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Provoke" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Invoke" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Revive" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Revoke" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Timid\n(ˈtimid)"];
                [Answer1 setTitle:@"Mutter" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Rigid" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Impressive" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Apprehensive" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Captivate" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Undergone\n(ˌəndərˈgō)"];
                [Answer1 setTitle:@"Pry" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Badly behaved" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Adverse response" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Overemphasize" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Go Through" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Vouch\n(vouCH)"];
                [Answer1 setTitle:@"Confirm" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Poach" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Oath" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Tendency" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Withstand\n(wiTHˈstand)"];
                [Answer1 setTitle:@"Instill" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Stand Up" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Still" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Resist" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Groundbreaking" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
                
            default:
                break;
        }
    }
}

-(void)Weeks17
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Benign\n(biˈnīn)"];
                [Answer1 setTitle:@"Acute" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Weak" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Strong" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Kind" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Bad" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Devote\n(diˈvōt)"];
                [Answer1 setTitle:@"Locate" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Allocate" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Question" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Invoke" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Vote" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Obscure\n(əbˈskyo͝or)"];
                [Answer1 setTitle:@"Secure" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Unsecure" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Obstinate " forState:UIControlStateNormal];
                [Answer4 setTitle:@"Unclear" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Obvious" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Perceive\n(pərˈsēv)"];
                [Answer1 setTitle:@"Discern" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Receive" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Kindness" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Attestation" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Quench" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Peruse\n(pəˈro͞oz)"];
                [Answer1 setTitle:@"Timid" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Fake" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Rebel" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Instill" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Read" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Phony\n(ˈfōnē )"];
                [Answer1 setTitle:@"Channel" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Encounter" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Call" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Rendezvous" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Bogus" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Remedy\n(ˈremədē)"];
                [Answer1 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Loyal" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Treatment" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Traitor" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Sober" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Scrutinize\n(ˈskro͞otnˌīz)"];
                [Answer1 setTitle:@"Decision" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Chaos" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Response" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Examine" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Uncertain" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Tedious\n(ˈtēdēəs)"];
                [Answer1 setTitle:@"Sufficient" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Apprehend" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Kind" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Acute" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Boring" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Verdict\n(ˈvərdikt)"];
                [Answer1 setTitle:@"Judgment" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Groundbreaking" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Incumbency" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Dispirit" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Imprison" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
                
            default:
                break;
        }
    }
}

-(void)Special1
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Deliberate\n(diˈlibərit )"];
                [Answer1 setTitle:@"Vouch" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Encounter" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Demeanor" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Intentional" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Encroaching" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Deplorable\n(diˈplôrəbəl)"];
                [Answer1 setTitle:@"Deceive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Conceive" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ravenous" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Complacent" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Disgraceful" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Detain\n(diˈtān)"];
                [Answer1 setTitle:@"Hold" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Intention " forState:UIControlStateNormal];
                [Answer3 setTitle:@"Custody" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Detention" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Attention" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Detention\n(diˈtenCHən)"];
                [Answer1 setTitle:@"Retention" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Custody" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Detain" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Omission" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Intrude" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Enigma\n(iˈnigmə)"];
                [Answer1 setTitle:@"Proponent" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Quiz" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Meditation" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Purposive" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Mystery" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Eradicate\n(iˈradiˌkāt)"];
                [Answer1 setTitle:@"Vouch" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Oath" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Soberness" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Eliminate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Elaborate" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Menace\n(ˈmenəs)"];
                [Answer1 setTitle:@"Threat" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Quench" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Placid" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Detention" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Overemphasize" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Perish\n(ˈperiSH)"];
                [Answer1 setTitle:@"Tranquil" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Stash" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Inflict" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Die" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Spawn" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Renegade\n(ˈreniˌgād)"];
                [Answer1 setTitle:@"Intimidation" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Generate" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Be Curious " forState:UIControlStateNormal];
                [Answer4 setTitle:@"Backlash" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Traitor " forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Sobriety\n(səˈbrīətē)"];
                [Answer1 setTitle:@"Soberness" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Rigidity" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Eradicate" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Neglect" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Be Killed" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
                
            default:
                break;
        }
    }
}

-(void)Special2
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Adorn\n(əˈdôrn)"];
                [Answer1 setTitle:@"Courage" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Adore" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Encroaching" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Intentional" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Decorate" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Allegiance\n(əˈlējəns)"];
                [Answer1 setTitle:@"Loyalty" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Fraud" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Probe" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Captivate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Neglect" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Appendage\n(əˈpendij)"];
                [Answer1 setTitle:@"Hold" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Addition " forState:UIControlStateNormal];
                [Answer3 setTitle:@"Apprehensive" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Purposive" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Substract" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Incarcerate\n(inˈkärsəˌrāt)"];
                [Answer1 setTitle:@"Imprison" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Omission" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Trial" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Sobriety" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Tranquil" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Inclination\n(ˌinkləˈnāSHən)"];
                [Answer1 setTitle:@"Eradicate" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Decline" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Detention" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Tendency" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Hobbling" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Profound\n(prəˈfound)"];
                [Answer1 setTitle:@"Propensity" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Heartfelt" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Profusion" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Proponent" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Confuse" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Savage\n(ˈsavɪdʒ)"];
                [Answer1 setTitle:@"Apprehensive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Vouch" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Menace" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Frighten" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Ferocious" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Stubborn\n(ˈstəbərn)"];
                [Answer1 setTitle:@"Foundation" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Arbitrary" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Capricious" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Confinement" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Obstinate" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Subdue\n(səbˈd(y)o͞o)"];
                [Answer1 setTitle:@"Backlash" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Conquer" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Intimidation " forState:UIControlStateNormal];
                [Answer4 setTitle:@"Execute" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Renegade " forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Utterly\n(ˈətərlē)"];
                [Answer1 setTitle:@"Cull" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Mutter" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Endowment" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Impose" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Completely" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
                
            default:
                break;
        }
    }

}

-(void)Special3
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Deliberate"];
                [Answer1 setTitle:@"Vouch" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Encounter" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Demeanor" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Intentional" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Encroaching" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Deplorable"];
                [Answer1 setTitle:@"Deceive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Conceive" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ravenous" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Complacent" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Disgraceful" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Detain"];
                [Answer1 setTitle:@"Hold" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Intention " forState:UIControlStateNormal];
                [Answer3 setTitle:@"Custody" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Detention" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Attention" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Detention"];
                [Answer1 setTitle:@"Retention" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Custody" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Detain" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Omission" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Intrude" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Enigma"];
                [Answer1 setTitle:@"Proponent" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Quiz" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Meditation" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Purposive" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Mystery" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Eradicate"];
                [Answer1 setTitle:@"Vouch" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Oath" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Soberness" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Eliminate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Elaborate" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Menace"];
                [Answer1 setTitle:@"Threat" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Quench" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Placid" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Detention" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Overemphasize" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Perish"];
                [Answer1 setTitle:@"Tranquil" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Stash" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Inflict" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Die" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Spawn" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Renegade"];
                [Answer1 setTitle:@"Intimidation" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Generate" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Be Curious " forState:UIControlStateNormal];
                [Answer4 setTitle:@"Backlash" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Traitor " forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Sobriety"];
                [Answer1 setTitle:@"Soberness" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Rigidity" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Eradicate" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Neglect" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Be Killed" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
                
            default:
                break;
        }
    }
}

-(void)Special4
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Adept\n(əˈdept)"];
                [Answer1 setTitle:@"Complex" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Adore" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Adaptation" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Nutate" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Foist" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Embody\n(emˈbädē)"];
                [Answer1 setTitle:@"Personify" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Scornful" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Penury" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Body" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Deception" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Entourage\n(ˌänto͞oˈräZH)"];
                [Answer1 setTitle:@"Encourage" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Appropriate" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Represent" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ponder" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Retinue" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Filament\n(ˈfiləmənt)"];
                [Answer1 setTitle:@"Wobble" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Fiber" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Oppress" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Engender" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Induce" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Luminous\n(ˈlo͞omənəs)"];
                [Answer1 setTitle:@"Keen" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Knack" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Shining" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Concoct" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Neglect" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Overrun\n(ˌōvərˈrən)"];
                [Answer1 setTitle:@"Invade" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Gluttonous" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Capricious" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ravenous" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Rash" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Prosper\n(ˈpräspər)"];
                [Answer1 setTitle:@"Strive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Settle" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Tranquil" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Demeanor" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Thrive" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Rebuff\n(riˈbəf)"];
                [Answer1 setTitle:@"Eject" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Reconstruct" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Repeal" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Reject" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Detention" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Resilient\n(riˈzilyənt)"];
                [Answer1 setTitle:@"Chaos" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Adapt" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Backlash " forState:UIControlStateNormal];
                [Answer4 setTitle:@"Trespass" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Flexible" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Venture\n(ˈvenCHər)"];
                [Answer1 setTitle:@"Decoy" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Enterprise" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Scarcity" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ambassador" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Subdue" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
                
            default:
                break;
        }
    }
    
}

-(void)Special5
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Breakthrough\n(ˈbrākˌTHro͞o)"];
                [Answer1 setTitle:@"Confine" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Ferocious" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Dispirit" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Advance" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Arbitrary" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Clinched\n(klinCH)"];
                [Answer1 setTitle:@"Blossom" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Toss" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Concoct" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Throw" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Secure" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Feint\n(fānt)"];
                [Answer1 setTitle:@"Reject" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Oppress" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Bluff" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Retention" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Adrenaline" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Gawk\n(gôk)"];
                [Answer1 setTitle:@"Gape" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Cape" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Gleam" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Gaze" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Stare" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Glint\n(glint)"];
                [Answer1 setTitle:@"Wonderful" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Revamp" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Captivate" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Calm" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Shine" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Hiss\n(his)"];
                [Answer1 setTitle:@"Crook" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Bow" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Lawbreaker" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Jeer" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Counterfeit" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Nodded\n(näd)"];
                [Answer1 setTitle:@"Mutter" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Agree" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Menace" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Idea" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Nutate" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Pinched\n(pinCHt)"];
                [Answer1 setTitle:@"Strained" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Peculiar" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Quench" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Vouch" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Tranquil" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Uproar\n(ˈəpˌrôr)"];
                [Answer1 setTitle:@"Counterfeit" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Pry" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Scream" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Turmoil" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Thrifty " forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Wobble\n(ˈwäbəl)"];
                [Answer1 setTitle:@"Totter" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Mutter" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Sobriety" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Smug" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Compliant" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
                
            default:
                break;
        }
    }
}

-(void)Special6
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Boorish\n(ˈbo͝oriSH)"];
                [Answer1 setTitle:@"Fastidious" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Dispirit" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Untidy" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Ferocious" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Coarse" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Conceited\n(kənˈsētid)"];
                [Answer1 setTitle:@"Rude" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Vain" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Morbid" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Timid" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Arrogantt" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Finicky\n(ˈfinikē)"];
                [Answer1 setTitle:@"Miserly" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Fickle" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Quirky" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Fussy" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Disputatious" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Malicious\n(məˈliSHəs)"];
                [Answer1 setTitle:@"Spiteful" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Self-centered" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Crass" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Parsimonious" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Plodding" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Obnoxious\n(əbˈnäkSHəs)"];
                [Answer1 setTitle:@"Unpleasant" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Undisciplined" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Unself-critical" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Uncooperative" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Unconvincing" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Pompous\n(ˈpämpəs)"];
                [Answer1 setTitle:@"Scornful" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Imperious" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Scheming" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Cowardly" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Asocial" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Quarrelsome\n(ˈkwôrəlsəm)"];
                [Answer1 setTitle:@"Self-Important" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Self-centered" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Argumentative" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Greedy" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Airy" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Slovenly\n(ˈsləvənlē)"];
                [Answer1 setTitle:@"Devious" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Bizarre" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Vague" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Scruffy" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Unlovable" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Stingy\n(ˈstinjē)"];
                [Answer1 setTitle:@"Vindictive" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Miserly" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Astigmatic" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Fanciful" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Venomous " forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Sullen\n(ˈsələn)"];
                [Answer1 setTitle:@"Outrageous" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Silly" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Surly" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Muddle-headed" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Expedient" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
                
            default:
                break;
        }
    }

}

-(void)Special7
{
    {
        switch (QuestionSelected)
        {
            case 0:
                Question.text = [NSString stringWithFormat:@"Affable\n(ˈafəbəl)"];
                [Answer1 setTitle:@"Amiable" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Modest" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Nonauthoritarian" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Enthusiastic" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Loyal" forState:UIControlStateNormal];
                Answer1Correct = YES;
                break;
            case 1:
                Question.text = [NSString stringWithFormat:@"Benevolent\n(bəˈnevələnt)"];
                [Answer1 setTitle:@"Allocentric" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Responsible" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Faithful" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Benign" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Capable" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 2:
                Question.text = [NSString stringWithFormat:@"Conscientious\n(ˌkänCHēˈenCHəs)"];
                [Answer1 setTitle:@"Friendly" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Kind" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Brave" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Sober" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Industrious" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 3:
                Question.text = [NSString stringWithFormat:@"Gallant\n(ˈgalənt)"];
                [Answer1 setTitle:@"Sophisticated" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Wise" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Well-rounded" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Insouciant" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Brave" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
            case 4:
                Question.text = [NSString stringWithFormat:@"Exuberant\n(igˈzo͞obərənt)"];
                [Answer1 setTitle:@"Curious" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Magnanimous" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Ebullient" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Serious" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Punctual" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 5:
                Question.text = [NSString stringWithFormat:@"Meticulous\n(məˈtikyələs)"];
                [Answer1 setTitle:@"Fun-loving" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Adventurous" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Careful" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Humble" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Sociable" forState:UIControlStateNormal];
                Answer3Correct = YES;
                break;
            case 6:
                Question.text = [NSString stringWithFormat:@"Obedient\n(ōˈbēdēənt)"];
                [Answer1 setTitle:@"Charismatic" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Paternalistic" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Polished" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Compliant" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Logical" forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 7:
                Question.text = [NSString stringWithFormat:@"Persistent\n(pərˈsistənt)"];
                [Answer1 setTitle:@"Innovative" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Tenacious" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Courageous" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Neat" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Athletic" forState:UIControlStateNormal];
                Answer2Correct = YES;
                break;
            case 8:
                Question.text = [NSString stringWithFormat:@"Suave\n(swäv)"];
                [Answer1 setTitle:@"Resourceful" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Dutiful" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Thorough" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Charming" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Honest " forState:UIControlStateNormal];
                Answer4Correct = YES;
                break;
            case 9:
                Question.text = [NSString stringWithFormat:@"Valiant\n(ˈvalyənt)"];
                [Answer1 setTitle:@"Clean" forState:UIControlStateNormal];
                [Answer2 setTitle:@"Stoic" forState:UIControlStateNormal];
                [Answer3 setTitle:@"Tidy" forState:UIControlStateNormal];
                [Answer4 setTitle:@"Lovable" forState:UIControlStateNormal];
                [Answer5 setTitle:@"Gallant" forState:UIControlStateNormal];
                Answer5Correct = YES;
                break;
                
            default:
                break;
        }
    }

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
    
    if (GameInProgress == NO)
    {
        ScoresNumbers = 0;
        QuestionNumbers = 0;
        CountNumber = 5;
        GameInProgress = YES;
    }
    CountNumber = 5;
    Results.hidden = YES;
    Exit.hidden = YES;
    Next.hidden = YES;
    Timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(TimerCount) userInfo:nil repeats:YES];
    
    Scores.text = [NSString stringWithFormat:@"%i", ScoresNumbers];
    QuestionNumber.text = [NSString stringWithFormat:@"%i", QuestionNumbers];
    TimerDisplay.text = [NSString stringWithFormat:@"%i",CountNumber];

    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    Answer5Correct = NO;
    
    WeeksLoaded = [ [NSUserDefaults standardUserDefaults] integerForKey:@"WeeksSaved" ];
    //temp = arc4random() % 10;
    QuestionSelected = arc4random() % 10;
    
    switch (WeeksLoaded)
    {
        case 1:
            WeeksSelected.text = [NSString stringWithFormat:@"6 - 12 January"];
            [self Weeks1];
            break;
        case 2:
            WeeksSelected.text = [NSString stringWithFormat:@"13 - 19 January"];
            [self Weeks2];
            break;
        case 3:
            WeeksSelected.text = [NSString stringWithFormat:@"20 - 26 January"];
            [self Weeks3];
            break;
        case 4:
            WeeksSelected.text = [NSString stringWithFormat:@"27 January - 2 February"];
            [self Weeks4];
            break;
        case 5:
            WeeksSelected.text = [NSString stringWithFormat:@"3 - 9 February"];
            [self Weeks5];
            break;
        case 6:
            WeeksSelected.text = [NSString stringWithFormat:@"10 - 16 February"];
            [self Weeks6];
            break;
        case 7:
            WeeksSelected.text = [NSString stringWithFormat:@"17 - 23 February"];
            [self Weeks7];
            break;
        case 8:
            WeeksSelected.text = [NSString stringWithFormat:@"24 February - 2 March"];
            [self Weeks8];
            break;
        case 9:
            WeeksSelected.text = [NSString stringWithFormat:@"3 - 9 March"];
            [self Weeks9];
            break;
        case 10:
            WeeksSelected.text = [NSString stringWithFormat:@"10 - 16 March"];
            [self Weeks10];
            break;
        case 11:
            WeeksSelected.text = [NSString stringWithFormat:@"17 - 23 March"];
            [self Weeks11];
            break;
        case 12:
            WeeksSelected.text = [NSString stringWithFormat:@"24 - 30 March"];
            [self Weeks12];
            break;
        case 13:
            WeeksSelected.text = [NSString stringWithFormat:@"31 March - 6 April"];
            [self Weeks13];
            break;
        case 14:
            WeeksSelected.text = [NSString stringWithFormat:@"7 - 13 April"];
            [self Weeks14];
            break;
        case 15:
            WeeksSelected.text = [NSString stringWithFormat:@"14 - 20 April"];
            [self Weeks15];
            break;
        case 16:
            WeeksSelected.text = [NSString stringWithFormat:@"21 - 27 April"];
            [self Weeks16];
            break;
        case 17:
            WeeksSelected.text = [NSString stringWithFormat:@"28 April - 3 Mei"];
            [self Weeks17];
            break;
        case 101:
            WeeksSelected.text = [NSString stringWithFormat:@"Civil War I"];
            [self Special1];
            break;
        case 102:
            WeeksSelected.text = [NSString stringWithFormat:@"Civil War II"];
            [self Special2];
            break;
        case 103:
            WeeksSelected.text = [NSString stringWithFormat:@"Civil War III"];
            [self Special3];
            break;
        case 104:
            WeeksSelected.text = [NSString stringWithFormat:@"Secrets of Silicon Valley"];
            [self Special4];
            break;
        case 105:
            WeeksSelected.text = [NSString stringWithFormat:@"I Am Zlatan"];
            [self Special5];
            break;
        case 106:
            WeeksSelected.text = [NSString stringWithFormat:@"Personaility Traits (Negative)"];
            [self Special6];
            break;
        case 107:
            WeeksSelected.text = [NSString stringWithFormat:@"IPersonaility Traits (Positive)"];
            [self Special7];
            break;
        default:
            break;
    }
    
    
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

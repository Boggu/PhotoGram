//
//  ViewController.m
//  PhotoGram
//
//  Created by Sai anvesh Boggavarapu on 7/19/15.
//  Copyright (c) 2015 Sai anvesh Boggavarapu. All rights reserved.
//

#import "ViewController.h"
#import "PhotoGramApi.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *hashTagtextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_hashTagtextField resignFirstResponder];
    
}
- (IBAction)searchButtonAction:(id)sender {
    if (self.hashTagtextField.text.length > 0) {
        [[PhotoGramApi sharedInstance]search:self.hashTagtextField.text completion:^(id responseObject, NSError *error) {
            
            [self pushSegueController];
            
        }];
    }else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Enter Hashtag" delegate: nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        
    }
    
}
-(void)pushSegueController{
    [self performSegueWithIdentifier:@"pushSegue" sender:self];
}

@end

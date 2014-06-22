//
//  PostViewController.m
//  FBPost
//
//  Created by Andrew Janich on 6/19/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "PostViewController.h"

@interface PostViewController ()
@property (weak, nonatomic) IBOutlet UIView *actionView;
@property (weak, nonatomic) IBOutlet UIButton *likeView;


@property (weak, nonatomic) IBOutlet UITextField *commentTextField;
@property (weak, nonatomic) IBOutlet UIView *commentBar;

@property (weak, nonatomic) IBOutlet UIView *postView;

- (IBAction)onTap:(id)sender;

- (IBAction)onCommentEditing:(id)sender;
//- (IBAction)onCommentingEnded:(id)sender;
//- (IBAction)onCommentingOutside:(id)sender;

- (IBAction)onLikeButton:(id)sender;
- (IBAction)onLikeDown:(id)sender;
- (IBAction)onLikeOutside:(id)sender;

- (IBAction)onCommentButton:(id)sender;
- (IBAction)onCommentDown:(id)sender;
- (IBAction)onCommentOutside:(id)sender;

- (IBAction)onShareButton:(id)sender;
- (IBAction)onShareDown:(id)sender;
- (IBAction)onShareOutside:(id)sender;


@end

@implementation PostViewController

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
    [super viewDidLoad];
    [self likeView];
   
    //self.commentTextField.layer.cornerRadius = 3;
    NSLog(@"View finished loading...");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"commenting ended");
    [self.view endEditing:YES];
    self.commentBar.frame = CGRectMake(self.commentBar.frame.origin.x,self.commentBar.frame.origin.y, self.commentBar.frame.size.height, self.commentBar.frame.size.width);

}

- (IBAction)onCommentEditing:(id)sender {
    NSLog(@"commenting began");
    self.commentBar.frame = CGRectMake(self.commentBar.frame.origin.x, 308, self.commentBar.frame.size.height, self.commentBar.frame.size.width);
    
}

- (IBAction)onLikeButton:(id)sender {
    NSLog(@"On touch up inside");
}

- (IBAction)onLikeDown:(id)sender {
    NSLog(@"On touch down");
    _likeView.selected = !_likeView.selected;
}

- (IBAction)onLikeOutside:(id)sender {
    NSLog(@"On touch up outside");
}

- (IBAction)onCommentButton:(id)sender {
    NSLog(@"On touch up inside");
}

- (IBAction)onCommentDown:(id)sender {
    NSLog(@"On touch down");
}

- (IBAction)onCommentOutside:(id)sender {
    NSLog(@"On touch up outside");
}

- (IBAction)onShareButton:(id)sender {
    NSLog(@"On touch up inside");
}

- (IBAction)onShareDown:(id)sender {
    NSLog(@"On touch down");
}

- (IBAction)onShareOutside:(id)sender {
    NSLog(@"On touch up outside");
}

@end
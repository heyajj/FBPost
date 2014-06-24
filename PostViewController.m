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
@property (weak, nonatomic) IBOutlet NSArray *links;


@property (weak, nonatomic) IBOutlet UITextField *commentTextField;
@property (weak, nonatomic) IBOutlet UIView *commentBar;

@property (weak, nonatomic) IBOutlet UIView *postView;

@property (weak, nonatomic) IBOutlet UIImageView *avatarView;

- (IBAction)onTap:(id)sender;

- (IBAction)onNavShareButton:(id)sender;
- (IBAction)onNavShareDown:(id)sender;
- (IBAction)onNavShareOutside:(id)sender;

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
   
    
    self.avatarView.layer.cornerRadius = 1.5;
    
    self.postView.layer.cornerRadius = 3;
    self.postView.layer.borderColor = [UIColor colorWithRed:.5 green:.5 blue:.5 alpha:0.35].CGColor;
    self.postView.layer.borderWidth = 1;
    
    
    self.postView.layer.shadowOffset = CGSizeMake(-15, 20);
    NSLog(@"View finished loading...");
    self.links = [NSArray array];
}

//- (void)setLinks:(NSArray *)links {
  //  _links = links;

//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


//ends editing, brings keyboard down
- (IBAction)onTap:(id)sender {
    NSLog(@"commenting ended");
    [self.view endEditing:YES];
    [UIView animateWithDuration :0.2 animations:^{self.commentBar.frame = CGRectMake(self.commentBar.frame.origin.x, 481, self.commentBar.frame.size.height, self.commentBar.frame.size.width);}];

}

- (IBAction)onNavShareDown:(id)sender {
}

- (IBAction)onNavShareButton:(id)sender {
}

- (IBAction)onNavShareOutside:(id)sender {
}

//begins editing, brings keyboard up
- (IBAction)onCommentEditing:(id)sender {
    NSLog(@"commenting began");
    [UIView animateWithDuration :0.2 animations:^{self.commentBar.frame = CGRectMake(self.commentBar.frame.origin.x, 308, self.commentBar.frame.size.height, self.commentBar.frame.size.width);}];
    
    
}
- (IBAction)onLikeButton:(id)sender {
    NSLog(@"On touch up inside");
}

//toggles like button
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

//begins editing, brings up keyboard
- (IBAction)onCommentDown:(id)sender {
    NSLog(@"On touch down");
    //self.commentTextField.selected = YES;
    //[_commentBar canBecomeFirstResponder];
    //[UIView animateWithDuration :0.2 animations:^{self.commentBar.frame = CGRectMake(self.commentBar.frame.origin.x, 308, self.commentBar.frame.size.height, self.commentBar.frame.size.width);}];
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
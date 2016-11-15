//
//  ViewController.m
//  W3D1---ScrollImageGallery
//
//  Created by Dylan McCrindle on 2016-11-14.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetails:)];
	UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetails:)];
	UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetails:)];

	[self.image1 addGestureRecognizer:tap1];
	[self.image2 addGestureRecognizer:tap2];
	[self.image3 addGestureRecognizer:tap3];
	[self.image1 setUserInteractionEnabled:YES];
	[self.image2 setUserInteractionEnabled:YES];
	[self.image3 setUserInteractionEnabled:YES];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	ZoomViewController *detailedView = segue.destinationViewController;
	UIImageView *imageView = (UIImageView *)[sender view];
	if(imageView == self.image1){
		detailedView.image =  self.image1.image;
	}
	if(sender == self.image2){
		detailedView.image =  self.image2.image;
	}
	if(sender == self.image3){
		detailedView.image =  self.image3.image;
	}
}

-(void) showDetails:(UITapGestureRecognizer*) sender{
	[self performSegueWithIdentifier:@"showDetails" sender:sender];
}


@end

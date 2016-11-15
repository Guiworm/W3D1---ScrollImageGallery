//
//  ZoomViewController.h
//  W3D1---ScrollImageGallery
//
//  Created by Dylan McCrindle on 2016-11-14.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"

@interface ZoomViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) UIImage *image;



@end

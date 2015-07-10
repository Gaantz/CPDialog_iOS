//
//  SuraDialog.m
//  SuraDialog
//
//  Created by Cristian on 10/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "SuraDialog.h"
#import "UIViewController+MJPopupViewController.h"

@interface SuraDialog ()
@property (strong,nonatomic) IBOutlet UIImageView *imagen;
@property (strong,nonatomic) IBOutlet UIButton *cerrar;
@property (strong,nonatomic) IBOutlet UIButton *more;
@end

@implementation SuraDialog

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imagen.layer.masksToBounds = YES;
    self.imagen.layer.cornerRadius = 10;
    
    [self.more setTitle:self.titulo forState:UIControlStateNormal];
    self.imagen.image = self.imgBanner;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)close:(id)sender
{
    [_parent dismissPopupViewControllerWithanimationType:MJPopupViewAnimationSlideTopBottom];
}

@end

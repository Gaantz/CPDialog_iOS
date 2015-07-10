//
//  ViewController.m
//  SuraDialog
//
//  Created by Cristian on 9/07/15.
//  Copyright (c) 2015 Cristian. All rights reserved.
//

#import "ViewController.h"
#import "SuraDialog.h"
#import "UIViewController+MJPopupViewController.h"

@interface ViewController ()
@property(nonatomic,strong) SuraDialog *dialog;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

- (IBAction)showDialog:(id)sender
{
    self.dialog = [[SuraDialog alloc] initWithNibName:@"iSuraDialog" bundle:nil];
    self.dialog.titulo = @"holaaa";
    self.dialog.imgBanner = [UIImage imageNamed:@"fondo"];
    self.dialog.parent = self;
    
    
//    [self.dialog personalizarDialogConTitulo:@"holaaaaa" conImagen:[UIImage imageNamed:@"fondo"]];
    
//    
//    CGFloat borderWidth = 5.0f;
//    
//    dialog.view.frame = CGRectInset(dialog.view.frame, -borderWidth, -borderWidth);
//    dialog.view.layer.borderColor = [UIColor yellowColor].CGColor;
//    dialog.view.layer.borderWidth = borderWidth;
//    dialog.view.layer.cornerRadius = 10;
//    dialog.view.layer.masksToBounds = YES;
    
//    [self.view addSubview:dialog.view];
    
    [self presentPopupViewController:self.dialog animationType:4];
}
@end

//
//  CategoriasViewController.m
//  HelloFacebookSample
//
//  Created by Maikol Araya on 12/1/12.
//
//

#import "CategoriasViewController.h"
#import "VegetalesViewController.h"

@interface CategoriasViewController ()

@end

@implementation CategoriasViewController
@synthesize imgCategoria01, imgCategoria02, imgCategoria03, imgCategoria04, imgCategoria05, imgCategoria06;

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
    
    
    //Imagenes
    imgCategoria01.userInteractionEnabled = YES;
    [imgCategoria01 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCat01 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCat01:)];
    [tapImgCat01 setNumberOfTapsRequired:1];
    [imgCategoria01 addGestureRecognizer:tapImgCat01];
    
    
    imgCategoria02.userInteractionEnabled = YES;
    [imgCategoria02 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCat02 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCat01:)];
    [tapImgCat02 setNumberOfTapsRequired:1];
    [imgCategoria02 addGestureRecognizer:tapImgCat02];
    
    imgCategoria03.userInteractionEnabled = YES;
    [imgCategoria03 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCat03 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCat01:)];
    [tapImgCat03 setNumberOfTapsRequired:1];
    [imgCategoria03 addGestureRecognizer:tapImgCat03];
    
    imgCategoria04.userInteractionEnabled = YES;
    [imgCategoria04 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCat04 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCat01:)];
    [tapImgCat04 setNumberOfTapsRequired:1];
    [imgCategoria04 addGestureRecognizer:tapImgCat04];
    
    imgCategoria05.userInteractionEnabled = YES;
    [imgCategoria05 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCat05 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCat01:)];
    [tapImgCat05 setNumberOfTapsRequired:1];
    [imgCategoria05 addGestureRecognizer:tapImgCat05];
    
    imgCategoria06.userInteractionEnabled = YES;
    [imgCategoria06 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCat06 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCat01:)];
    [tapImgCat06 setNumberOfTapsRequired:1];
    [imgCategoria06 addGestureRecognizer:tapImgCat06];
    
    


    
    newImage = [[UIImage alloc] init];
}


- (void)actionCat01:(UITapGestureRecognizer *)recognizer{
    VegetalesViewController *pVegetales      = [self.storyboard instantiateViewControllerWithIdentifier:@"vegetalesViewController"];
    pVegetales.modalPresentationStyle  = UIModalPresentationFullScreen;
    pVegetales.modalTransitionStyle    = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:pVegetales animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight;
}
    
    
@end

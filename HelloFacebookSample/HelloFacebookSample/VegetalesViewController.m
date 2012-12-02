//
//  VegetalesViewController.m
//  HelloFacebookSample
//
//  Created by Maikol Araya on 12/1/12.
//
//

#import "VegetalesViewController.h"
#import "CategoriasViewController.h"
#import "CarnesViewController.h"
#import "KGModal.h"

@interface VegetalesViewController ()

@end

@implementation VegetalesViewController

@synthesize imgVegetales01, imgVegetales02, imgVegetales03, imgVegetales04, imgVegetales05, imgVegetales06, imgVegetales07, imgVegetales08, imgVegetales09, imgVegetales10, imgVegetales11, imgVegetales12;

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
    
    //[self dismissViewControllerAnimated:YES completion:nil];
    
    
    [super viewDidLoad];

    UISwipeGestureRecognizer *swipeToCarnesLeft =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(action_swipeToCarnes:)];
    [swipeToCarnesLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:swipeToCarnesLeft];
    
    UISwipeGestureRecognizer *swipeToCategoriasRight =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(action_swipeToCategorias:)];
    [swipeToCategoriasRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:swipeToCategoriasRight];
    
    imgVegetales01.userInteractionEnabled = YES;
    [imgVegetales01 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg01 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg01:)];
    [tapImgVeg01 setNumberOfTapsRequired:1];
    [imgVegetales01 addGestureRecognizer:tapImgVeg01];
    
    
    imgVegetales02.userInteractionEnabled = YES;
    [imgVegetales02 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg02 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg02:)];
    [tapImgVeg02 setNumberOfTapsRequired:1];
    [imgVegetales02 addGestureRecognizer:tapImgVeg02];
    
    imgVegetales03.userInteractionEnabled = YES;
    [imgVegetales03 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg03 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg03:)];
    [tapImgVeg03 setNumberOfTapsRequired:1];
    [imgVegetales03 addGestureRecognizer:tapImgVeg03];
    
    imgVegetales04.userInteractionEnabled = YES;
    [imgVegetales04 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg04 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg04:)];
    [tapImgVeg04 setNumberOfTapsRequired:1];
    [imgVegetales04 addGestureRecognizer:tapImgVeg04];
    
    imgVegetales05.userInteractionEnabled = YES;
    [imgVegetales05 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg05 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg05:)];
    [tapImgVeg05 setNumberOfTapsRequired:1];
    [imgVegetales05 addGestureRecognizer:tapImgVeg05];
    
    imgVegetales06.userInteractionEnabled = YES;
    [imgVegetales06 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg06 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg06:)];
    [tapImgVeg06 setNumberOfTapsRequired:1];
    [imgVegetales06 addGestureRecognizer:tapImgVeg06];
    
    imgVegetales07.userInteractionEnabled = YES;
    [imgVegetales07 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg07 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg07:)];
    [tapImgVeg07 setNumberOfTapsRequired:1];
    [imgVegetales07 addGestureRecognizer:tapImgVeg07];
    
    imgVegetales08.userInteractionEnabled = YES;
    [imgVegetales08 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg08 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg08:)];
    [tapImgVeg08 setNumberOfTapsRequired:1];
    [imgVegetales08 addGestureRecognizer:tapImgVeg08];
    
    imgVegetales09.userInteractionEnabled = YES;
    [imgVegetales09 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg09 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg09:)];
    [tapImgVeg09 setNumberOfTapsRequired:1];
    [imgVegetales09 addGestureRecognizer:tapImgVeg09];
    
    imgVegetales10.userInteractionEnabled = YES;
    [imgVegetales10 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg10:)];
    [tapImgVeg10 setNumberOfTapsRequired:1];
    [imgVegetales10 addGestureRecognizer:tapImgVeg10];
    
    imgVegetales11.userInteractionEnabled = YES;
    [imgVegetales11 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg11:)];
    [tapImgVeg11 setNumberOfTapsRequired:1];
    [imgVegetales11 addGestureRecognizer:tapImgVeg11];
    
    imgVegetales12.userInteractionEnabled = YES;
    [imgVegetales12 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgVeg12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionVeg12:)];
    [tapImgVeg12 setNumberOfTapsRequired:1];
    [imgVegetales12 addGestureRecognizer:tapImgVeg12];
    
    UIPinchGestureRecognizer *pinchImgVeg01 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAction01:)];
    [imgVegetales01 addGestureRecognizer:pinchImgVeg01];
    
    newImage = [[UIImage alloc] init];
    
}


- (void)actionVeg01:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales01.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightTomate"];
        [imgVegetales01 setAccessibilityIdentifier:@"is"];
        [imgVegetales01 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"tomate.png"];
        [imgVegetales01 setAccessibilityIdentifier:@"des"];
        [imgVegetales01 setImage:newImage];
    }
}

- (void)actionVeg02:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales02.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightPlatano"];
        [imgVegetales02 setAccessibilityIdentifier:@"is"];
        [imgVegetales02 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"platano.png"];
        [imgVegetales02 setAccessibilityIdentifier:@"des"];
        [imgVegetales02 setImage:newImage];
    }
}

- (void)actionVeg03:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales03.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightZanahoria"];
        [imgVegetales03 setAccessibilityIdentifier:@"is"];
        [imgVegetales03 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"zanahoria.png"];
        [imgVegetales03 setAccessibilityIdentifier:@"des"];
        [imgVegetales03 setImage:newImage];
    }
}

- (void)actionVeg04:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales04.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightChiverre"];
        [imgVegetales04 setAccessibilityIdentifier:@"is"];
        [imgVegetales04 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"chiverre.png"];
        [imgVegetales04 setAccessibilityIdentifier:@"des"];
        [imgVegetales04 setImage:newImage];
    }
}

- (void)actionVeg05:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales05.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightCoco"];
        [imgVegetales05 setAccessibilityIdentifier:@"is"];
        [imgVegetales05 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"coco.png"];
        [imgVegetales05 setAccessibilityIdentifier:@"des"];
        [imgVegetales05 setImage:newImage];
    }
}

- (void)actionVeg06:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales06.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightMaiz"];
        [imgVegetales06 setAccessibilityIdentifier:@"is"];
        [imgVegetales06 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"maiz.png"];
        [imgVegetales06 setAccessibilityIdentifier:@"des"];
        [imgVegetales06 setImage:newImage];
    }
}

- (void)actionVeg07:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales07.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightPapa"];
        [imgVegetales07 setAccessibilityIdentifier:@"is"];
        [imgVegetales07 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"papa.png"];
        [imgVegetales07 setAccessibilityIdentifier:@"des"];
        [imgVegetales07 setImage:newImage];
    }
}

- (void)actionVeg08:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales08.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightYuca"];
        [imgVegetales08 setAccessibilityIdentifier:@"is"];
        [imgVegetales08 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"yuca.png"];
        [imgVegetales08 setAccessibilityIdentifier:@"des"];
        [imgVegetales08 setImage:newImage];
    }
}

- (void)actionVeg09:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales09.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightFrijoles"];
        [imgVegetales09 setAccessibilityIdentifier:@"is"];
        [imgVegetales09 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"frijoles.png"];
        [imgVegetales09 setAccessibilityIdentifier:@"des"];
        [imgVegetales09 setImage:newImage];
    }
}

- (void)actionVeg10:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales10.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightArroz"];
        [imgVegetales10 setAccessibilityIdentifier:@"is"];
        [imgVegetales10 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"arroz.png"];
        [imgVegetales10 setAccessibilityIdentifier:@"des"];
        [imgVegetales10 setImage:newImage];
    }
}

- (void)actionVeg11:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales11.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightPasta"];
        [imgVegetales11 setAccessibilityIdentifier:@"is"];
        [imgVegetales11 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"pasta.png"];
        [imgVegetales11 setAccessibilityIdentifier:@"des"];
        [imgVegetales11 setImage:newImage];
    }
}

- (void)actionVeg12:(UITapGestureRecognizer *)recognizer{
    
    if ([imgVegetales12.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightVainicas"];
        [imgVegetales12 setAccessibilityIdentifier:@"is"];
        [imgVegetales12 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"vainicas.png"];
        [imgVegetales12 setAccessibilityIdentifier:@"des"];
        [imgVegetales12 setImage:newImage];
    }
}

- (void)pinchAction01:(UIPinchGestureRecognizer *)recognizer{
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(170, 0, 1, 1)];
    
    UIImageView *sabiasQueImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sabias_que_tomate.png"]];
    [sabiasQueImgView setFrame:CGRectMake(0,0,350,300)];
    
    [contentView addSubview:sabiasQueImgView];    
    
    [[KGModal sharedInstance] showWithContentView:contentView andAnimated:YES];
}

/*Responde a los gestureRecognizers*/
- (void)action_swipeToCategorias:(UISwipeGestureRecognizer *)recognizer{
    CategoriasViewController *pCategorias      = [self.storyboard instantiateViewControllerWithIdentifier:@"categoriasViewController"];
    pCategorias.modalPresentationStyle  = UIModalPresentationFullScreen;
    pCategorias.modalTransitionStyle    = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:pCategorias animated:YES completion:nil];
}

/*Responde a los gestureRecognizers*/
- (void)action_swipeToCarnes:(UISwipeGestureRecognizer *)recognizer{
    CarnesViewController *pCarnes      = [self.storyboard instantiateViewControllerWithIdentifier:@"carnesViewController"];
    pCarnes.modalPresentationStyle  = UIModalPresentationFullScreen;
    pCarnes.modalTransitionStyle    = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:pCarnes animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

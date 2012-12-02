/*
 APPetitoso is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
 
 APPetitoso is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
 
    You should have received a copy of the GNU General Public License
    along with APPetitoso.  If not, see <http://www.gnu.org/licenses/>.
 */
#import "CarnesViewController.h"
#import "VegetalesViewController.h"
#import "ListaRecetasViewController.h"
#import "KGModal.h"

@interface CarnesViewController ()

@end

@implementation CarnesViewController
@synthesize imgCarnes01, imgCarnes02, imgCarnes03, imgCarnes04, imgCarnes05, imgCarnes06, imgCarnes07, imgCarnes08, imgCarnes09, imgCarnes10, imgCarnes11,imgCarnes12;

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
    UISwipeGestureRecognizer *swipeToVegetalesLeft =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(action_swipeToVegetales:)];
    [swipeToVegetalesLeft setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:swipeToVegetalesLeft];

    UISwipeGestureRecognizer *swipeToListaRight =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(action_swipeListaRecetas:)];
    [swipeToListaRight setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:swipeToListaRight];
    
    imgCarnes01.userInteractionEnabled = YES;
    [imgCarnes01 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne01 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne01:)];
    [tapImgCarne01 setNumberOfTapsRequired:1];
    [imgCarnes01 addGestureRecognizer:tapImgCarne01];
    
    imgCarnes02.userInteractionEnabled = YES;
    [imgCarnes02 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne02 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne02:)];
    [tapImgCarne02 setNumberOfTapsRequired:1];
    [imgCarnes02 addGestureRecognizer:tapImgCarne02];
    
    imgCarnes03.userInteractionEnabled = YES;
    [imgCarnes03 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne03 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne03:)];
    [tapImgCarne03 setNumberOfTapsRequired:1];
    [imgCarnes03 addGestureRecognizer:tapImgCarne03];
    
    imgCarnes04.userInteractionEnabled = YES;
    [imgCarnes04 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne04 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne04:)];
    [tapImgCarne04 setNumberOfTapsRequired:1];
    [imgCarnes04 addGestureRecognizer:tapImgCarne04];
    
    imgCarnes05.userInteractionEnabled = YES;
    [imgCarnes05 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne05 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne05:)];
    [tapImgCarne05 setNumberOfTapsRequired:1];
    [imgCarnes05 addGestureRecognizer:tapImgCarne05];
    
    imgCarnes06.userInteractionEnabled = YES;
    [imgCarnes06 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne06 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne06:)];
    [tapImgCarne06 setNumberOfTapsRequired:1];
    [imgCarnes06 addGestureRecognizer:tapImgCarne06];
    
    imgCarnes07.userInteractionEnabled = YES;
    [imgCarnes07 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne07 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne07:)];
    [tapImgCarne07 setNumberOfTapsRequired:1];
    [imgCarnes07 addGestureRecognizer:tapImgCarne07];
    
    imgCarnes08.userInteractionEnabled = YES;
    [imgCarnes08 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne08 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne08:)];
    [tapImgCarne08 setNumberOfTapsRequired:1];
    [imgCarnes08 addGestureRecognizer:tapImgCarne08];
    
    imgCarnes09.userInteractionEnabled = YES;
    [imgCarnes09 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne09 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne09:)];
    [tapImgCarne09 setNumberOfTapsRequired:1];
    [imgCarnes09 addGestureRecognizer:tapImgCarne09];
    
    imgCarnes10.userInteractionEnabled = YES;
    [imgCarnes10 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne10:)];
    [tapImgCarne10 setNumberOfTapsRequired:1];
    [imgCarnes10 addGestureRecognizer:tapImgCarne10];
    
    imgCarnes11.userInteractionEnabled = YES;
    [imgCarnes11 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne11:)];
    [tapImgCarne11 setNumberOfTapsRequired:1];
    [imgCarnes11 addGestureRecognizer:tapImgCarne11];
    
    imgCarnes12.userInteractionEnabled = YES;
    [imgCarnes12 setAccessibilityIdentifier:@"des"];
    UITapGestureRecognizer *tapImgCarne12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionCarne12:)];
    [tapImgCarne12 setNumberOfTapsRequired:1];
    [imgCarnes12 addGestureRecognizer:tapImgCarne12];
    
    UIPinchGestureRecognizer *pinchImgCarne04 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAction04:)];
    [imgCarnes04 addGestureRecognizer:pinchImgCarne04];
    
    newImage = [[UIImage alloc] init];  

    
}

- (void)pinchAction04:(UIPinchGestureRecognizer *)recognizer{
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(170, 0, 1, 1)];
    
    UIImageView *sabiasQueImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sabias_que_carne.png"]];
    [sabiasQueImgView setFrame:CGRectMake(0,0,350,300)];
    
    [contentView addSubview:sabiasQueImgView];
    
    [[KGModal sharedInstance] showWithContentView:contentView andAnimated:YES];
}


- (void)actionCarne01:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes01.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightRes"];
        [imgCarnes01 setAccessibilityIdentifier:@"is"];
        [imgCarnes01 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"res.png"];
        [imgCarnes01 setAccessibilityIdentifier:@"des"];
        [imgCarnes01 setImage:newImage];
    }
}

- (void)actionCarne02:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes02.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightPollo"];
        [imgCarnes02 setAccessibilityIdentifier:@"is"];
        [imgCarnes02 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"pollo.png"];
        [imgCarnes02 setAccessibilityIdentifier:@"des"];
        [imgCarnes02 setImage:newImage];
    }
}

- (void)actionCarne03:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes03.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightPescado"];
        [imgCarnes03 setAccessibilityIdentifier:@"is"];
        [imgCarnes03 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"pescado.png"];
        [imgCarnes03 setAccessibilityIdentifier:@"des"];
        [imgCarnes03 setImage:newImage];
    }
}

- (void)actionCarne04:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes04.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightCerdo"];
        [imgCarnes04 setAccessibilityIdentifier:@"is"];
        [imgCarnes04 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"cerdo.png"];
        [imgCarnes04 setAccessibilityIdentifier:@"des"];
        [imgCarnes04 setImage:newImage];
    }
}

- (void)actionCarne05:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes05.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightCarneMolida"];
        [imgCarnes05 setAccessibilityIdentifier:@"is"];
        [imgCarnes05 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"carneMolida.png"];
        [imgCarnes05 setAccessibilityIdentifier:@"des"];
        [imgCarnes05 setImage:newImage];
    }
}

- (void)actionCarne06:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes06.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightLeche"];
        [imgCarnes06 setAccessibilityIdentifier:@"is"];
        [imgCarnes06 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"leche.png"];
        [imgCarnes06 setAccessibilityIdentifier:@"des"];
        [imgCarnes06 setImage:newImage];
    }
}

- (void)actionCarne07:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes07.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightHuevos"];
        [imgCarnes07 setAccessibilityIdentifier:@"is"];
        [imgCarnes07 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"huevo.png"];
        [imgCarnes07 setAccessibilityIdentifier:@"des"];
        [imgCarnes07 setImage:newImage];
    }
}

- (void)actionCarne08:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes08.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightQueso"];
        [imgCarnes08 setAccessibilityIdentifier:@"is"];
        [imgCarnes08 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"queso.png"];
        [imgCarnes08 setAccessibilityIdentifier:@"des"];
        [imgCarnes08 setImage:newImage];
    }
}

- (void)actionCarne09:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes09.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightChorizo"];
        [imgCarnes09 setAccessibilityIdentifier:@"is"];
        [imgCarnes09 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"chorizo.png"];
        [imgCarnes09 setAccessibilityIdentifier:@"des"];
        [imgCarnes09 setImage:newImage];
    }
}

- (void)actionCarne10:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes10.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightMortadela"];
        [imgCarnes10 setAccessibilityIdentifier:@"is"];
        [imgCarnes10 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"mortadela.png"];
        [imgCarnes10 setAccessibilityIdentifier:@"des"];
        [imgCarnes10 setImage:newImage];
    }
}

- (void)actionCarne11:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes11.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightSalchichas"];
        [imgCarnes11 setAccessibilityIdentifier:@"is"];
        [imgCarnes11 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"salchichas.png"];
        [imgCarnes11 setAccessibilityIdentifier:@"des"];
        [imgCarnes11 setImage:newImage];
    }
}

- (void)actionCarne12:(UITapGestureRecognizer *)recognizer{
    
    if ([imgCarnes12.accessibilityIdentifier isEqualToString:@"des"]) {
        newImage = [UIImage imageNamed:@"highlightSalchichon"];
        [imgCarnes12 setAccessibilityIdentifier:@"is"];
        [imgCarnes12 setImage:newImage];
    }
    else{
        newImage = [UIImage imageNamed:@"salchichon.png"];
        [imgCarnes12 setAccessibilityIdentifier:@"des"];
        [imgCarnes12 setImage:newImage];
    }
}

/*Responde a los gestureRecognizers*/
- (void)action_swipeToVegetales:(UISwipeGestureRecognizer *)recognizer{
    VegetalesViewController *pVegetales      = [self.storyboard instantiateViewControllerWithIdentifier:@"vegetalesViewController"];
    pVegetales.modalPresentationStyle  = UIModalPresentationFullScreen;
    pVegetales.modalTransitionStyle    = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:pVegetales animated:YES completion:nil];
}

- (void)action_swipeListaRecetas:(UISwipeGestureRecognizer *)recognizer{
    ListaRecetasViewController *pLista      = [self.storyboard instantiateViewControllerWithIdentifier:@"listaViewController"];
    pLista.modalPresentationStyle  = UIModalPresentationFullScreen;
    pLista.modalTransitionStyle    = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:pLista animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

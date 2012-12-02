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

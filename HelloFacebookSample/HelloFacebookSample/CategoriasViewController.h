//
//  CategoriasViewController.h
//  HelloFacebookSample
//
//  Created by Maikol Araya on 12/1/12.
//
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface CategoriasViewController : UIViewController{
    UIImage *newImage;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgCategoria01;
@property (weak, nonatomic) IBOutlet UIImageView *imgCategoria02;
@property (weak, nonatomic) IBOutlet UIImageView *imgCategoria03;
@property (weak, nonatomic) IBOutlet UIImageView *imgCategoria04;
@property (weak, nonatomic) IBOutlet UIImageView *imgCategoria05;
@property (weak, nonatomic) IBOutlet UIImageView *imgCategoria06;

@end

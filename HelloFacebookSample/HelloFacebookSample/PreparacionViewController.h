//
//  PreparacionViewController.h
//  HelloFacebookSample
//
//  Created by Maikol Araya on 12/2/12.
//
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface PreparacionViewController : UIViewController{
    int recipeType;
}

@property (readwrite) int recipeType;
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UIButton *tweetButton;

@property (weak, nonatomic) IBOutlet UILabel *tituloReceta;
@property (weak, nonatomic) IBOutlet UITextView *ingredientesReceta;
@property (weak, nonatomic) IBOutlet UITextView *preparacionReceta;

- (IBAction)fbButtonClicked:(id)sender;
- (IBAction)back_button:(id)sender;
- (IBAction)actionTweet:(id)sender;

@end

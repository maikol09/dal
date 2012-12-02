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

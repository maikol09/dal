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

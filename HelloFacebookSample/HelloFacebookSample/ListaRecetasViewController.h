//
//  ListaRecetasViewController.h
//  HelloFacebookSample
//
//  Created by Maikol Araya on 12/1/12.
//
//

#import <UIKit/UIKit.h>

@interface ListaRecetasViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    
}

//@property (weak, nonatomic) UITableView *pListaRecetas;
@property (weak, nonatomic) IBOutlet UITableView *pListaRecetas;


@end

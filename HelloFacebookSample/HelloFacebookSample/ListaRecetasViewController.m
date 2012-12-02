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

#import "ListaRecetasViewController.h"
#import "CarnesViewController.h"
#import "PreparacionViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ListaRecetasViewController ()

@end

@implementation ListaRecetasViewController
@synthesize pListaRecetas;

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
	// Do any additional setup after loading the view.
    self.pListaRecetas.delegate   = self;
    self.pListaRecetas.dataSource = self;
    
    UISwipeGestureRecognizer *swipeToCarnesRight =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(action_swipeToCarnes:)];
    [swipeToCarnesRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:swipeToCarnesRight];
    
    
    pListaRecetas.backgroundColor = [UIColor clearColor];
    pListaRecetas.backgroundView = nil;
    
    self.view.layer.cornerRadius = 25;
    self.view.layer.masksToBounds = YES;

}

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

/** @name numberOfRowsInSection */
/**
 Funcion primitiva de cada tableView, consiste en
 determinar cuantos elementos va a contener el tableView, en otras palabras, retorna
 el numero de celdas que van a existir en el tableView.
 @param tableView: UITableView sobre la cual se va a ejecutar la accion
 @see   Retorna un size del NSArray definido para cargar los datos del UITableView
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

/** @name cellForRowAtIndexPath */
/**
 Funcion primitiva de cada tableView, consiste en
 darle el formato necesario a la celda, decir cual NSString va en cada celda
 y su formato de style y demás.
 @param tableView: UITableView sobre la cual se va a ejecutar la accion
 @see   cell: Objeto de tipo UITableViewCell que es la celda con todas la modificaciones.
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = nil;
    //  Todo tableView tiene un identificador, esto nos permite saber sobre cual tableView se va a trabajar
    cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"myCell"];
    }
    
    if (indexPath.row == 0) {
        cell.backgroundView = nil;
        cell.backgroundView = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"fondoOpcionesRecetas.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0]];
        cell.textLabel.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Arroz con Pollo";
        cell.detailTextLabel.backgroundColor = [UIColor clearColor];
        cell.detailTextLabel.text = @"Tiempo de Cocción: 60 minutos \n Comida típica costarricense";
        UIImage *imgDetail = [UIImage imageNamed:@"detailArrozConPollo.png"];
        cell.imageView.image = imgDetail;
        
    }
    else if (indexPath.row == 1){
        cell.backgroundView = nil;
        cell.backgroundView = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"fondoOpcionesRecetas.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0]];
        cell.textLabel.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Sopa de Tortilla";
        cell.detailTextLabel.backgroundColor = [UIColor clearColor];
        cell.detailTextLabel.text = @"Tiempo de Cocción: 60 minutos \n Comida típica costarricense";
        UIImage *imgDetail = [UIImage imageNamed:@"sopaTortillas.png"];
        cell.imageView.image = imgDetail;
        
    }
    
    return cell;
}

/** @name didSelectRowAtIndexPath */
/**
 Funcion primitiva de cada tableView, encargada de ejecutar una accion al hacer "touch en una celda"
 @param tableView: UITableView sobre la cual se va a ejecutar la accion
 @see   cell: Objeto de tipo UITableViewCell que es la celda con todas la modificaciones.
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    PreparacionViewController *pPreparacion      = [self.storyboard instantiateViewControllerWithIdentifier:@"preparacionViewController"];
    pPreparacion.recipeType = indexPath.row;
    pPreparacion.modalPresentationStyle  = UIModalPresentationFullScreen;
    pPreparacion.modalTransitionStyle    = UIModalTransitionStyleCoverVertical;
    [self presentViewController:pPreparacion animated:YES completion:nil];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end

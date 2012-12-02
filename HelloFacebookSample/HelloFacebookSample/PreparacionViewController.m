//
//  PreparacionViewController.m
//  HelloFacebookSample
//
//  Created by Maikol Araya on 12/2/12.
//
//

#import "PreparacionViewController.h"
#import <Twitter/Twitter.h>

@interface PreparacionViewController ()

@property (strong, nonatomic) id<FBGraphUser> loggedInUser;

@end

@implementation PreparacionViewController
@synthesize mainImage, recipeType, tituloReceta, ingredientesReceta, preparacionReceta;

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
    
    ingredientesReceta.backgroundColor = [UIColor clearColor];
    preparacionReceta.backgroundColor = [UIColor clearColor];
    
    
    
    if (recipeType == 0) {
        mainImage.image = [UIImage imageNamed:@"arroz_con_pollo.png"];
    }
    else if (recipeType == 1){
        mainImage.image = [UIImage imageNamed:@"sopa_de_tortilla"];
        tituloReceta.text = @"Sopa de Tortilla";
        ingredientesReceta.text = @"Sopa de pollo: 1 unidad \nPollo: 1/2 kilo\n Tortilla de maíz: 1 paquete\n Tomate: 2 unidades\n Aguacate: 2 unidades\n Culantro: al gusto\n Cebolla: 1 unidad";
        preparacionReceta.text = @"Cortar las tortillas en cuatro secciones y freír en aceite. Colocar las tortillas fritas en platos soperos y verter la sopa. Servir inmediatamente para evitar que se enfrie.  Colocar el tomate, el aguacate, el culantro y la cebolla en platos separados para ser servidos sobre la sopa al gusto de cada persona.";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Convenience method to perform some action that requires the "publish_actions" permissions.
- (void) performPublishAction:(void (^)(void)) action {
    // we defer request for permission to post to the moment of post, then we check for the permission
    if ([FBSession.activeSession.permissions indexOfObject:@"publish_actions"] == NSNotFound) {
        // if we don't already have the permission, then we request it now
        [FBSession.activeSession reauthorizeWithPublishPermissions:[NSArray arrayWithObject:@"publish_actions"]
                                                   defaultAudience:FBSessionDefaultAudienceFriends
                                                 completionHandler:^(FBSession *session, NSError *error) {
                                                     if (!error) {
                                                         action();
                                                     }
                                                     //For this example, ignore errors (such as if user cancels).
                                                 }];
    } else {
        action();
    }
    
}

// UIAlertView helper for post buttons
- (void)showAlert:(NSString *)message
           result:(id)result
            error:(NSError *)error {
    
    NSString *alertMsg;
    NSString *alertTitle;
    if (error) {
        alertMsg = error.localizedDescription;
        alertTitle = @"Error";
    } else {
        NSDictionary *resultDict = (NSDictionary *)result;
        alertMsg = [NSString stringWithFormat:@"Successfully posted '%@'.\nPost ID: %@",
                    message, [resultDict valueForKey:@"id"]];
        alertTitle = @"Success";
    }
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle
                                                        message:alertMsg
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}



// Post Status Update button handler; will attempt to invoke the native
// share dialog and, if that's unavailable, will post directly
- (IBAction)fbButtonClicked:(id)sender {
    // Post a status update to the user's feed via the Graph API, and display an alert view
    // with the results or an error.
    NSString *name = self.loggedInUser.first_name;
    NSString *message = [NSString stringWithFormat:@"Updating status for %@ at %@",
                         name != nil ? name : @"me" , [NSDate date]];
    
    // if it is available to us, we will post using the native dialog
    BOOL displayedNativeDialog = [FBNativeDialogs presentShareDialogModallyFrom:self
                                                                    initialText:nil
                                                                          image:nil
                                                                            url:nil
                                                                        handler:nil];
    if (!displayedNativeDialog) {
        
        [self performPublishAction:^{
            // otherwise fall back on a request for permissions and a direct post
            [FBRequestConnection startForPostStatusUpdate:message
                                        completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
                                            
                                            [self showAlert:message result:result error:error];
                                        }];
            
        }];
    }
}

- (IBAction)back_button:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)actionTweet:(id)sender {
    
    TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
    [tweetSheet setInitialText:@"Hoy voy a comer saludable con #APPetitoso! \n Publicando desde la app desarrollada en #DAL  "];
    UIImage *tweetImg = mainImage.image;
    [tweetSheet addImage:tweetImg];
    [self presentViewController:tweetSheet animated:YES completion:nil];
}
@end

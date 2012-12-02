/*
 * Copyright 2012 Facebook
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "HFAppDelegate.h"

#import "HFViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import <Parse/Parse.h>

@implementation HFAppDelegate

@synthesize window = _window;
@synthesize rootViewController = _rootViewController;

// FBSample logic
// If we have a valid session at the time of openURL call, we handle Facebook transitions
// by passing the url argument to handleOpenURL; see the "Just Login" sample application for
// a more detailed discussion of handleOpenURL
- (BOOL)application:(UIApplication *)application 
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    // attempt to extract a token from the url
    return [FBSession.activeSession handleOpenURL:url]; 
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // FBSample logic
    // if the app is going away, we close the session object
    [FBSession.activeSession close];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // BUG:
    // Nib files require the type to have been loaded before they can do the
    // wireup successfully.  
    // http://stackoverflow.com/questions/1725881/unknown-class-myclass-in-interface-builder-file-error-at-runtime
    
    //Parse Part
    
    // ****************************************************************************
    // Uncomment and fill in with your Parse credentials:
     [Parse setApplicationId:@"6BgwzuFQWmrdWThJiF8jIwxZZ9OWNJBNkkbY3Qh0" clientKey:@"nHAxlj23q0TJ8xHs0jX9ogAhY82pumPzbFmA9maa"];
    //
    // If you are using Facebook, uncomment and fill in with your Facebook App Id:
    // [PFFacebookUtils initializeWithApplicationId:@"your_facebook_app_id"];
    // ****************************************************************************
    
    [PFUser enableAutomaticUser];
    
    PFACL *defaultACL = [PFACL ACL];
    
    // If you would like all objects to be private by default, remove this line.
    [defaultACL setPublicReadAccess:YES];
    
    [PFACL setDefaultACL:defaultACL withAccessForCurrentUser:YES];

    
    
    [FBProfilePictureView class];
    
    //Hacer que aparezca la vara de facebook
    
    /*
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    self.window.rootViewController = [[HFViewController alloc] initWithNibName:@"HFViewController_iPad" bundle:nil];

    [self.window makeKeyAndVisible];
    */
    return YES;
    

    
    
    //Parse other part
    /*
    // Override point for customization after application launch.
    
    self.window.rootViewController = self.rootViewController;
    [self.window makeKeyAndVisible];
    
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|
     UIRemoteNotificationTypeAlert|
     UIRemoteNotificationTypeSound];
    return YES;
    */
}

- (void)applicationDidBecomeActive:(UIApplication *)application	{
    // FBSample logic
    // We need to properly handle activation of the application with regards to SSO
    //  (e.g., returning from iOS 6.0 authorization dialog or from fast app switching).
    [FBSession.activeSession handleDidBecomeActive];
}

@end

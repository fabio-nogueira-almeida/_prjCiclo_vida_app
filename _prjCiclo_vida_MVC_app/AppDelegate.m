//
//  AppDelegate.m
//  _prjCiclo_vida_MVC_app
//
//  Created by Fábio Nogueira  on 07/10/12.
//  Copyright (c) 2012 Fábio Nogueira . All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


//metodo que mostra o estado current
- (void)presentCurrent:(UIApplication *)application
{
    //criando uma variavel inteira que vai pegar o estado da aplicação
    int statusCode = application.applicationState;
    
    //    Estou criando uma string e nela já estou inicializando setando um valor por uma condição IF
    // SE o status da aplicação for ativa, ele mostra ativa, se for inativa(está em background, ele mostra inativo)
    
    NSString *currentStatus = [NSString stringWithFormat:@"Estado atua: %@",
                               statusCode  == UIApplicationStateActive?@"Ativa"
                               :statusCode == UIApplicationStateBackground?@"background"
                               :@"inativo" ];
    
    NSLog(@"%@", currentStatus);
}



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //refatorei o codigo e pedi para criar um metodo novo. Devido a isso, ele automaticamente já colocou essa notação a baixo
    // para refatorar, basta clicar com o botão direito e ir em refact/extract
    
    // mostrando o nome no metodo na hora de executar o metodo que diz qual estado estava
    NSLog(@"didFinishLaunchingWithOptions");
    
    [self presentCurrent:application];
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
        // mostrando o nome no metodo na hora de executar o metodo que diz qual estado estava
        NSLog(@"applicationWillResignActive");
    
        [self presentCurrent:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
        // mostrando o nome no metodo na hora de executar o metodo que diz qual estado estava
        NSLog(@"applicationDidEnterBackground");
    
        [self presentCurrent:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
        // mostrando o nome no metodo na hora de executar o metodo que diz qual estado estava
        NSLog(@"applicationWillEnterForeground");
    
        [self presentCurrent:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
        // mostrando o nome no metodo na hora de executar o metodo que diz qual estado estava
        NSLog(@"applicationDidBecomeActive");
    
        [self presentCurrent:application];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
        // mostrando o nome no metodo na hora de executar o metodo que diz qual estado estava
        NSLog(@"applicationWillTerminate");
    
        [self presentCurrent:application];
}

@end

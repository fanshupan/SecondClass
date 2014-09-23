//
//  AppDelegate.m
//  HomeWork
//
//  Created by Apple on 14-9-22.
//  Copyright (c) 2014年 Second. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    NSString *string1=@"abcdefg";
    int string1length=[string1 length];
    for (int i=0; i<=string1length; i++) {
        NSLog(@"%d",i);
    }
    
    //把a,b,c,d,e放到数组里
    NSArray *array1=[NSArray arrayWithObjects:@"a",@"b",@"c",@"d",@"e",nil];
    NSLog(@"array:%@",array1);
    
    //打印NSString This is year of 2014；2014用 int 类型
    NSString *string2=@"This is year ";
    int year=2014;
    NSString *string3=[NSString stringWithFormat:@"%@ %d",string2,year];
    NSLog(@"%@",string3);
    
    
    //打印名字的长度
    NSString *string4=@"fanshupan";
    int string4lenth=[string4 length];
    NSLog(@"Name length %d:",string4lenth);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  AppDelegate.m
//  SecondClass
//
//  Created by user1 on 14-9-20.
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
    
    
    int x=123;
    int y=456;
    NSString *astring=@"hello";
    
    
    
    UILabel *mylabel=[[UILabel alloc]init];
    mylabel.frame=CGRectMake(10, 50, 200, 30);
    mylabel.text=  [NSString stringWithFormat:@"x:%d y:%d %@",x,y,astring];
    [self.window addSubview:mylabel];
    
    
    
    //格式化字符串
    NSString *currency=@"$";
    int money=200;
    UILabel *mylable2=[[UILabel alloc]initWithFrame:CGRectMake(30, 100, 200, 30)];
    mylable2.text=[NSString stringWithFormat:@"%@ %d",currency,money];
    [self.window addSubview:mylable2];

    
    //类型的转换
    NSString *bstring=@"123";
    int bint=[bstring intValue];
    NSLog(@"%d",bint);
    
   NSString *cstring=@"123.2";
    double cint=[cstring doubleValue];
    mylable2.text=[NSString stringWithFormat:@"%.2f",cint];
    
    //字符串对比
    NSString *string1=@"abd";
    NSString *string2=@"efg";
    if (![string1 isEqualToString:string2]) {
        mylable2.text=@" 不相等";
        
    }
    else{
    mylable2.text=@"相等";
    
        
}
    
    for (int i =0; i <= 10; i++) {
        if (i == 2) {
            mylable2.text = [NSString stringWithFormat:@"%d",i];
            
        }
        
        //sleep(1);
    }
    
    //分割数组
    
    NSString *string3=@"h,e,l,l,o,1,2,3,4";
    
    NSArray *stringarray = [string3 componentsSeparatedByString:@","];
    NSLog(@"string array %@",stringarray);
    
    int string3length=[string3 length];//获取字符串长度
    
    NSString *subString = [string3 substringWithRange:NSMakeRange([string3 length]-1, 1)];
    NSString *substring2 = [string3 substringToIndex:2];
    NSString *substring3 = [string3 substringFromIndex:[string3 length]-1];
    NSLog(@"substring :%@",subString);
    
    
    NSArray *array=[NSArray arrayWithObjects:@"a",@"b",@"c",@"d", nil];//不能原始类
    
    
    
    NSLog(@"array :%@",array);
    
    
    int arraycount=[array count];//计算个数
    NSLog(@"arraycount:%d",arraycount);
    
    NSString *string4=[array objectAtIndex:2];//具体某个数组对象
    NSString *string5 = array[3];
    NSString *string6 = [array lastObject];
    NSLog(@"array object %@",string5);
    
    
    
    NSMutableArray *array1=[[NSMutableArray alloc] initWithObjects:@"uuu",@"iii", nil];
    
    [array1 insertObject:@"yyy" atIndex:1];
    
   // [array1 removeObjectAtIndex:1];
    [array1 addObject:@"bbb"];
    [array1 addObject:@"ppp"];
    
   // [array1 replaceObjectAtIndex:1 withObject:@"oiu"];
    
    NSLog(@"array1:%@",array1);
    
    
    NSDictionary *mydict = @{@"subjects": @"mysub"};
    
   // NSDictionary *dictionary1=[NSDictionary dictionaryWithObjectsAndKeys:@"key",mydict,@"key2",@"value2", nil];
    
    
    //NSLog(@"dictionary 111 %@",dictionary1);
    NSDictionary *dictionary2 = @{@"name": @"shupan",@"age":@"29",@"subject":mydict};
    NSString *name=[dictionary2 objectForKey:@"name"];
    
    [dictionary2 count];
    NSString *name2 = dictionary2[@"name"];
    
    NSLog(@"dictionary %@",dictionary2);
    
    
    
    
    
    
    
    
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

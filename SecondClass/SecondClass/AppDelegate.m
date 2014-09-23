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
    
    //对比名字
    NSString *stringName1=@"fanshupan";
    NSString *stringName2=@"wuming";
    if ([stringName1 isEqualToString:stringName2]) {
        NSLog(@"Two name is the same");
    }
    else{
        NSLog(@"Two name is different");
    }
    
    
    //申明2跟nsstring 然后合并
    NSString *astring=@"This is the first string";
    NSString *bstring=@"This is the second string";
    NSString *cstring=[NSString stringWithFormat:@"%@ %@",astring,bstring];
    NSLog(@"Consolidation two string are %@:",cstring);
    
    //申明一个数组，里面有5个元素，找到第三个元素
    NSArray *array2=[NSArray arrayWithObjects:@"aaaaa",@"bbbbb",@"ccccc",@"ddddd",@"eeeee",nil];
    NSString *stringArray=array2[2];
    NSLog(@"%@",stringArray);
    
    //申明一个数组，写出数组里面有多少跟元素
    NSArray *array3=[NSArray arrayWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",nil];
    int array3count=[array3 count];
    NSLog(@"The array3 count is %d",array3count);
    
    //写一个动态数组，然后增加一个元素,在第二个位置增加一个元素，删除一个元素
    NSMutableArray *array4=[[NSMutableArray alloc]initWithObjects:@"aaaa",@"bbbb",@"cccc", nil];
    [array4 addObject:@"dddd"];
    [array4 insertObject:@"ffff" atIndex:1];
    NSLog(@"%@",array4);
    
    [array4 removeObjectAtIndex:3];
    NSLog(@"%@",array4);
    
    
    NSDictionary *dictionary=@{@"name":@"shupan",@"age":@"29",@"date":@"2014-09-17"};
    NSLog(@"dictionary is :%@",dictionary);
    
    
    NSDictionary *dictionary3=@{@"test1": @"10",@"test2":@"20"};
    NSDictionary *dictionary2=@{@"rhymes": dictionary3,@"games":dictionary3,@"crayoning":dictionary3};
    NSDictionary *dictionary1=@{@"name":@"shupan",@"age":@"29",@"subjects":dictionary2};
    NSLog(@"The dictionary is %d",[dictionary1 count]);
    
                          
    
    NSArray *array5=[NSArray arrayWithObjects:@"aaa",@"bbb",@"ccc",nil];
    int array5count=[array5 count];
    NSLog(@"The count array5 is %d",array5count);
    NSArray *array6=[array5 objectAtIndex:2];
    NSLog(@" %@",array6);
    
    NSMutableArray *muarray=[NSMutableArray arrayWithCapacity:3];//初始化可变数组对象的长度如果后面代码继续添加数组超过长度6以后NSMutableArray的长度会自动扩充，6是自己可以设置的颗粒度。
    [muarray addObject:@"a"];
    [muarray addObject:@"b"];
    [muarray addObject:@"c"];
    [muarray addObject:@"d"];
    [muarray addObject:@"e"];
    [muarray insertObject:@"f" atIndex:2];
    //[muarray removeObjectAtIndex:3];
    NSRange range=NSMakeRange(0, 2);
    [muarray removeObjectIdenticalTo:@"2" inRange:range];
    NSLog(@"%@",muarray);
    
    //NSRange range=NSMakeRange(0, 5);取范围
    //[array removeObjectIdenticalTo:(id) inRange:(NSRange)] : 在指定范围内删除指定的元素。
    
    NSDictionary *mudictionary=[NSDictionary dictionaryWithObjectsAndKeys:@"tets1",@"10",@"test2",@"20",nil];
    NSEnumerator *enumerator1=[mudictionary keyEnumerator];
    NSLog(@" key is %@",enumerator1);
    
    
    NSMutableDictionary *muDictionary=[NSMutableDictionary dictionaryWithCapacity:3];
    [muDictionary setObject:@"aaa" forKey:@"10"];
    [muDictionary setObject:@"bbb" forKey:@"20"];
    [muDictionary removeObjectForKey:@"10"];
    NSLog(@" all key %@ ",[muDictionary allKeys]);
    NSLog(@" all value %@",[muDictionary allValues]);
   

    
    
    
    
    
    
    
    
    
    
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

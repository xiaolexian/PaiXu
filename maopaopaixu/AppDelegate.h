//
//  AppDelegate.h
//  maopaopaixu
//
//  Created by nvtest on 2017/3/20.
//  Copyright © 2017年 liudeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


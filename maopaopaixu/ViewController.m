//
//  ViewController.m
//  maopaopaixu
//
//  Created by nvtest on 2017/3/20.
//  Copyright © 2017年 liudeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** -------------------------OC中的冒泡排序 ------------------------- */
    
    NSMutableArray *tempArray = [NSMutableArray arrayWithObjects:@2, @20, @12, @3, @4, @6, @7, @9, @222,nil];
    
    // 遍历全数组
    for (int i = 0; i < tempArray.count ; i++) {
        
        //由于冒泡排序比较是的相邻两个数的大小,即tempArray[j] 和 tempArray[j+1] 因此j < tempArray.count - 1
        for (int j = 0; j < tempArray.count - 1; j++) {
            
            // 取出相邻两个数组中的数做比较
            if (tempArray[j] < tempArray[j+1]) {
                
                // 通过数组索引更改位置(相邻元素比较, 大的放前面)
                [tempArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
         }
     }
    
    // 打印出排序后的数组
    NSLog(@"冒泡排序%@", tempArray);
    
    
     /** -------------------------OC中的选择排序 ------------------------- */
    
    NSMutableArray *selcetArray = [NSMutableArray arrayWithObjects:@2, @20, @12, @3, @4, @6, @7, @9, @222,nil];
    
    // 遍历全数组
    for (int i = 0; i < selcetArray.count; i++) {
        
        // 遍历全数组---j的初始索引为 i + 1
        for (int j = i + 1; j < selcetArray.count; j++) {
            
            //取出i所在位置的数和后面的j=i+1的数一一做对比
            if (selcetArray[i] < selcetArray[j]) {
                
                // 通过数组索引更改位置
                [selcetArray exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
     }
    
    // 打印出排序后的数组
    NSLog(@"选择排序%@", selcetArray);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

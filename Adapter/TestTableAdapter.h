//
//  TestTableAdapter.h
//  Adapter
//
//  Created by XM on 17/8/29.
//  Copyright © 2017年 my. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TestTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSMutableArray *testArray;
-(instancetype)initWithTestArray:(NSMutableArray *)array;
@end

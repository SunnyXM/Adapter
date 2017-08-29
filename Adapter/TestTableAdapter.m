//
//  TestTableAdapter.m
//  Adapter
//
//  Created by XM on 17/8/29.
//  Copyright © 2017年 my. All rights reserved.
//

#import "TestTableAdapter.h"

@implementation TestTableAdapter

-(instancetype)initWithTestArray:(NSMutableArray *)array{
    if (self = [super init]) {
        self.testArray = [NSMutableArray array];
        self.testArray = array;
    }
    return self;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.testArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellid"];
    }
    cell.textLabel.text = [self.testArray objectAtIndex:indexPath.row];
    return cell;
}
@end

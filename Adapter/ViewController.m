//
//  ViewController.m
//  Adapter
//
//  Created by XM on 17/8/29.
//  Copyright © 2017年 my. All rights reserved.
//

#import "ViewController.h"
#import "TestTableAdapter.h"
@interface ViewController ()

@property(nonatomic,strong)UITableView *testTableView;
@property(nonatomic,strong)TestTableAdapter *testAdapter;
@property(nonatomic,strong)NSMutableArray *testArray;
@end

@implementation ViewController

-(UITableView *)testTableView{
    if (_testTableView == nil) {
        _testTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        [self.view addSubview:_testTableView];
    }
    return _testTableView;
}

-(NSMutableArray *)testArray{
    if (_testArray == nil) {
        _testArray = [NSMutableArray array];
        for (int i =0; i <10; i ++) {
            [_testArray addObject:@"This is a model for the design of the adapter a simple application!"];
        }
    }
    return _testArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testAdapter = [[TestTableAdapter alloc] initWithTestArray:self.testArray];
    self.testTableView.delegate = self.testAdapter;
    self.testTableView.dataSource = self.testAdapter;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end








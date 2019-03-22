// LYFindViewController.m 
// LYProjectKit 
// 
// Created by 赵良育 on 2019/3/12. 
// Copyright © 2019 赵良育. All rights reserved. 
// 
// <#Class des#>
#import "LYFindViewController.h"
#import "LYFindModel.h"
@interface LYFindViewController ()

@end

@implementation LYFindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self registerCellWithIdentifiers:@[@"LYFindTableViewCell"]];
    

    
    NSMutableArray * arr = [NSMutableArray array];
    for (int i = 0 ; i < 20; i++) {
        LYFindModel * model = [LYFindModel new];
        [arr addObject:model];
    }
    
    self.tableView.indicatorStyle=UIScrollViewIndicatorStyleBlack;
   

             self.dataArray = arr;
            [self.tableView reloadData];

}



#pragma mark - Life

#pragma mark - Public Methods

#pragma mark - Notification

#pragma mark - Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld",indexPath.row);
}

- (void)headerRefreshFinish
{
    NSLog(@"头部刷新完成");
}

- (void)footerRefreshFinish
{
    NSLog(@"尾部刷新完成");
}

#pragma mark - Private Methods

#pragma mark - Lazy

#pragma mark - dealloc
- (void) dealloc
{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

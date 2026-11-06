//
//  DialViewController.m
//  sdkdemo
//
//  Created by coolwear on 2022/9/21.
//

#import "DialViewController.h"
#import "CustomDialViewController.h"

@interface DialViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation DialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.rowHeight = 55;
    self.tableView.frame = self.view.bounds;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    NSArray *arr = @[NSLocalizedString(@"Dial_01", nil),NSLocalizedString(@"Dial_02", nil),NSLocalizedString(@"Dial_03", nil),NSLocalizedString(@"CustomDial", nil)];
    cell.textLabel.text = arr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (3 == indexPath.row) {
        CustomDialViewController *vc = [[CustomDialViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    YD_SyncFaceIndexCmd *cmd = [[YD_SyncFaceIndexCmd alloc] init];
    cmd.index = indexPath.row;
    [CEProductK6.shareInstance sendCmdToDevice:cmd complete:nil];
}

@end

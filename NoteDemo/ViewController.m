//
//  ViewController.m
//  NoteDemo
//
//  Created by rp.wang on 15/12/7.
//  Copyright © 2015年 rp.wang. All rights reserved.
//

#import "ViewController.h"
#import "FristTableViewCell.h"
#import "SecondViewController.h"
#import "ThridTableViewCell.h"

static NSString * const ThridTableViewCellID = @"ThridTableViewCellID";

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.title = @"tableview 圆角";
    
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row % 2 == 0)
    {
        FristTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FristTableViewCell" forIndexPath:
                                    indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor groupTableViewBackgroundColor];
        cell.RootView.backgroundColor = [UIColor whiteColor];
        cell.RootView.layer.cornerRadius = 5;
     
        cell.textLabel.text = @"FristTableViewCell";
        return cell;
    }else
    {
        ThridTableViewCell *cellthrid = [tableView dequeueReusableCellWithIdentifier:ThridTableViewCellID];
        [cellthrid setSelectionStyle:UITableViewCellSelectionStyleNone];
        if (!cellthrid)
        {
            cellthrid = [[ThridTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ThridTableViewCellID];
        }
        cellthrid.textLabel.text = @"ThridTableViewCell";
        
        return cellthrid;
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondViewController *secondView = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:secondView animated:YES];
}
@end

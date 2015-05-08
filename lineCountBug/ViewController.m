//
//  ViewController.m
//  lineCountBug
//
//  Created by Alexander Hoekje List on 5/8/15.
//  Copyright (c) 2015 BUG REPORTING. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 500;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    Cell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    //solution
    //cell.captionlabel.numberOfLines = 0;
#warning this is where the crash happens
    [[cell captionlabel] setText:@"this text is purposefully very very very very very long, too long for cool school"];
    
    return cell;
}

@end

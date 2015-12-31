//
//  ViewController.m
//  ProtocolBuffer-iOS
//
//  Created by mao on 12/31/15.
//  Copyright © 2015 Maokebing. All rights reserved.
//

#import "ViewController.h"
#import "UserInfo.pb.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//build ->obj->data
	UserInfoBuilder* builder = [UserInfo builder];
	[builder setName:@"zhangsan"];
	[builder setAcctId:1000];
	[builder setStatus:UserStatusOnline];
	
	UserInfo* info1 = [builder build];
	NSData* data = info1.data;
	NSLog(@"data:%@", data);

	
	//data->obj
	
	UserInfo* info2 = [UserInfo parseFromData:data];
	NSLog(@"obj:%@", info2);
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end

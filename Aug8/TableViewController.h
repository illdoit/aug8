//
//  TableViewController.h
//  Aug8
//
//  Created by Sir Andrew on 8/8/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController{
	NSString *cellReuseIdentifier;
	NSArray *headers;
	NSArray *gaps;
    UISwitch *mySwitch;
}

@end

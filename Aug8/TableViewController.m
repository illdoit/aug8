//
//  TableViewController.m
//  Aug8
//
//  Created by Sir Andrew on 8/8/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@end

@implementation TableViewController

- (id) initWithStyle: (UITableViewStyle)style
{
	self = [super initWithStyle:style];
	if (self) {
		// Custom initialization
		cellReuseIdentifier = @"gaps";
        
		headers = [NSArray arrayWithObjects:
                   @" ",
                   @" ",
                   @" ",
                   @" ",
                   @" ",	//The \n (newline) skips an extra line.
                   nil
                   ];
        
		gaps = [NSArray arrayWithObjects:
                 
                 //---Section 1------------
                 [NSArray arrayWithObjects:
                  @"Airplane Mode",
                  @"Wi-fi",
                  @"Bluetooth",
                  nil
                  ],
                 
                 //---Section 1------------
                 [NSArray arrayWithObjects:
                  @"Do Not Disturb",
                  @"Notifications",
                  nil
                  ],
                 
                 //---Section 1------------
                 [NSArray arrayWithObjects:
                  @"General",
                  @"Sounds",
                  @"Brightness & Wallpaper",
                  @"Privacy",
                  nil
                  ],
                 
                 //---Section 1------------
                 [NSArray arrayWithObjects:
                  @"iCloud",
                  @"Mail, Contacts, Calendars",
                  @"Notes",
                  @"Reminders",
                  @"Phone",
                  @"Messages",
                  @"Facetime",
                  @"Maps",
                  @"Safari",
                  
                  nil
                  ],
                 
                 //---Section 1------------
                 [NSArray arrayWithObjects:
                  @"iTunes & App Stores",
                  @"Music",
                  @"Videos",
                  @"Photos & Camera",
                  @"iBooks",
                  @"Newsstand",
                  @"iTunes U",
                  nil
                  ],
                 
                 nil
                 ];
	}
	return self;
}

- (void) viewDidLoad
{
	[super viewDidLoad];
    
	[self.tableView registerClass: [UITableViewCell class]
           forCellReuseIdentifier: cellReuseIdentifier];
    
	// Uncomment the following line to preserve selection between presentations.
	// self.clearsSelectionOnViewWillAppear = NO;
    
	// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
	// self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView
{
	// Return the number of sections.
	return gaps.count;
}

- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection: (NSInteger) section
{
	// Return the number of rows in the section.
	NSArray *gap = [gaps objectAtIndex: section];
	return gap.count;
}

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellReuseIdentifier forIndexPath: indexPath];
    

	NSArray *gap = [gaps objectAtIndex: indexPath.section];
    //------------------------
    cell.textLabel.text = [gap objectAtIndex: indexPath.row];
	NSString *fileName = [cell.textLabel.text stringByAppendingString: @".png"];
	cell.imageView.image = [UIImage imageNamed: fileName];	//nil if .jpg file doesn't exist
	return cell;
}

- (NSString *) tableView: (UITableView *) tableView titleForHeaderInSection: (NSInteger) section {
	return [headers objectAtIndex: section];
}



#pragma mark - Table view delegate

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
	//UITableViewCell *cell = [tableView cellForRowAtIndexPath: indexPath];
	
	//Toggle the cell's checkmark.
	/*if (cell.accessoryType == UITableViewCellAccessoryNone) {
		cell.accessoryType = UITableViewCellAccessoryCheckmark;
	} else {
		cell.accessoryType = UITableViewCellAccessoryNone;
	}*/
}

@end

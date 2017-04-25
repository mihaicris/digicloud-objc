//
//  AccountSelectionViewController.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

typedef void(^Block)(void);

#define cellWidth       200
#define cellHeight      100
#define spacingHoriz    20
#define spacingVert     20

@interface AccountSelectionViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, copy, nullable) Block onSelect;
@property (nonatomic) BOOL isExecuting;
@property (nonatomic, nonnull) NSArray<User *> *users;
@property (nonatomic, nullable, weak) UIActivityIndicatorView *spinner;
@property (nonatomic, nullable, weak) UICollectionView *collectionView;
@property (nonatomic, nullable, weak) UILabel *noAccountsLabel;
@property (nonatomic, nullable, weak) UILabel *addAccountButton;
@property (nonatomic, nullable, weak) UILabel *logoBigLabel;
@property (nonatomic, nullable, weak) UIStackView *stackView;
@property (nonatomic, nullable, weak) UIButton *loginToAnotherAccountButton;
@property (nonatomic, nullable, weak) UIButton *manageAccountsButton;

- (void)configureViews;
- (void)getAccountsFromKeychain;

@end

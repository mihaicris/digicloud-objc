//
//  AccountSelectionViewController.m
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import "AccountSelectionViewController.h"

@interface AccountSelectionViewController ()

@end

@implementation AccountSelectionViewController

- (void)viewDidLoad {
    [_collectionView registerClass:[AccountCollectionViewCell class] forCellWithReuseIdentifier: [AccountCollectionViewCell description]];
    [self getPersistedUsers];
    [super viewDidLoad];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [[_collectionView collectionViewLayout] invalidateLayout];   
}

- (void)getPersistedUsers {
}

- (void)getAccountsFromKeychain {}

- (void)configureViews {}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[self users] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [[UICollectionViewCell alloc] init];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(cellWidth, cellHeight);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)collectionViewLayout;
    CGFloat colWidth = collectionView.bounds.size.width;
    CGFloat colHeight = collectionView.bounds.size.height;
    
    CGFloat topInset, leftInset, bottomInset, rightInset;
    
    int items = (int)[collectionView numberOfItemsInSection:section];
    
    
    layout.minimumInteritemSpacing = spacingHoriz;
    layout.minimumLineSpacing = spacingVert;

    switch (items) {
        case 1:
            topInset = (colHeight - cellHeight)/2;
            leftInset = (colWidth - cellWidth)/2;
            break;
        
        case 2:
            topInset = (colHeight - cellHeight)/2;
            leftInset = (colWidth - (cellWidth * 2) - spacingHoriz)/2;
            break;
        
        case 3:
            topInset = (colHeight - (cellHeight * 3) - (spacingVert * 2))/2;
            leftInset = (colWidth - cellWidth)/2;
            break;
        
        case 4:
            topInset = (colHeight - (cellHeight * 2) - (spacingVert * 1))/2;
            leftInset = (colWidth - (cellWidth * 2) - (spacingHoriz * 1))/2;
            break;
        
        default:
            topInset = (colHeight - (cellHeight * 3) - (spacingVert * 2))/2;
            leftInset = (colWidth - (cellWidth * 2) - (spacingHoriz * 1))/2;
            break;
    }
    
    bottomInset = topInset;
    rightInset = leftInset;
    
    return UIEdgeInsetsMake(topInset, leftInset, bottomInset, rightInset);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (_isExecuting) { return; }
    [self setIsExecuting:YES];
    [self switchToAccount:indexPath];
}

- (void)switchToAccount: (NSIndexPath *_Nonnull)indexPath {
}


@end

//
//  AccountCollectionViewCell.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 25/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) UIImageView *profileImage;
@property (nonatomic, weak) UILabel *accountNameLabel;

- (void)setupViews;

@end

//
//  AccountCollectionViewCell.m
//  Digi Cloud
//
//  Created by Mihai Cristescu on 25/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import "AccountCollectionViewCell.h"

@implementation AccountCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    
    // Configure profileImageView
    self.profileImage.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.profileImage.contentMode = UIViewContentModeScaleAspectFit;
    self.profileImage.layer.cornerRadius = 10;
    self.layer.masksToBounds = YES;
    
    // Configure accountNameLabel
    self.accountNameLabel.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.accountNameLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:14];
    self.accountNameLabel.textColor = [UIColor whiteColor];
    self.accountNameLabel.textAlignment = NSTextAlignmentCenter;
    self.accountNameLabel.numberOfLines = 2;
    
    [self addSubview:_profileImage];
    [self addSubview:_accountNameLabel];
    
    [NSLayoutConstraint activateConstraints: [NSArray arrayWithObjects:
                                              [_profileImage.widthAnchor        constraintEqualToAnchor:self.widthAnchor multiplier:0.4],
                                              [_profileImage.centerXAnchor      constraintEqualToAnchor: self.centerXAnchor],
                                              [_profileImage.topAnchor          constraintEqualToAnchor: self.topAnchor],
                                              [_profileImage.heightAnchor       constraintEqualToAnchor: self.widthAnchor multiplier: 0.4],
                                              [_accountNameLabel.widthAnchor    constraintEqualToAnchor: self.widthAnchor multiplier: 1.0],
                                              [_accountNameLabel.centerXAnchor  constraintEqualToAnchor: self.centerXAnchor],
                                              [_accountNameLabel.topAnchor      constraintEqualToAnchor: _profileImage.bottomAnchor constant: 5], nil]];
    
}

@end

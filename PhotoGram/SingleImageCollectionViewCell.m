//
//  SingleImageCollectionViewCell.m
//  PhotoGram
//
//  Created by Sai anvesh Boggavarapu on 7/20/15.
//  Copyright (c) 2015 Sai anvesh Boggavarapu. All rights reserved.
//

#import "SingleImageCollectionViewCell.h"

@implementation SingleImageCollectionViewCell

- (void)awakeFromNib {
    [self setoutLine];
}
- (void)setoutLine{
    self.layer.borderColor = [UIColor blackColor].CGColor;
    self.layer.borderWidth =1;
    self.layer.cornerRadius = 4.0;
    self.contentView.layer.cornerRadius = 4.0;
}

@end

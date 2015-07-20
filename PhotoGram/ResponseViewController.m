//
//  ResponseViewController.m
//  PhotoGram
//
//  Created by Sai anvesh Boggavarapu on 7/19/15.
//  Copyright (c) 2015 Sai anvesh Boggavarapu. All rights reserved.
//

#import "ResponseViewController.h"
#import "SingleImageCollectionViewCell.h"

@interface ResponseViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ResponseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.title = @"Photos";
    [self.collectionView registerNib:[UINib nibWithNibName:@"SingleImageCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
     }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor whiteColor];
    return cell;
}
- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

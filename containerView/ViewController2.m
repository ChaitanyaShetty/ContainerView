//
//  ViewController2.m
//  containerView
//
//  Created by chaitanya on 06/10/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController2.h"
#import "CollectionViewCell.h"
@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    images = [[NSArray alloc]initWithObjects:@"Green Tea.jpg", @"Angry Birds Cake.jpg", @"Green Tea.jpg", @"Angry Birds Cake.jpg", @"Green Tea.jpg",  nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return images.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.item]];
    
    return cell;
    
}

@end

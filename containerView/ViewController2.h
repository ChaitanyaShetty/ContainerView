//
//  ViewController2.h
//  containerView
//
//  Created by chaitanya on 06/10/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSArray *images;
}
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

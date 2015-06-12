//
//  ViewController.m
//  Rectangle
//
//  Created by MAEDA HAJIME on 2014/03/26.
//  Copyright (c) 2014年 MAEDA HAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *ivTarget;

@property (weak, nonatomic) IBOutlet UITextView *teString;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// [矩形情報取得]ボタンを押した時
- (IBAction)proc01:(id)sender {
    
    // （１）矩形（原点座標/サイズ）
    CGRect rct = self.ivTarget.frame;
    // マクロ:NSStringFromCGRect
    NSLog(@"（１）%@", NSStringFromCGRect(rct));
    
    //（２）原点座標
    CGPoint pnt = self.ivTarget.frame.origin;
    NSLog(@"（２）%@", NSStringFromCGPoint(pnt));
    NSLog(@"（２）%f, %f", pnt.x, pnt.y);
    
    //（３）サイズ
    CGSize siz01 = self.ivTarget.frame.size;
    NSLog(@"（３）%@", NSStringFromCGSize(siz01));
    NSLog(@"（３）%f", siz01.height);
    
    //（４）中央座標
    CGPoint cpt = self.ivTarget.center;
    NSLog(@"（４）%@", NSStringFromCGPoint(cpt));
    
    self.teString.text = nil;
    
    self.teString.text = [self.teString.text stringByAppendingFormat:@"（１）矩形（原点座標/サイズ）\n"];
    self.teString.text = [self.teString.text stringByAppendingFormat:
                          @"（１）%@\n", NSStringFromCGRect(rct)];
    
    self.teString.text = [self.teString.text stringByAppendingFormat:@"（２）原点座標\n"];
    self.teString.text = [self.teString.text stringByAppendingFormat:
                          @"（２）%@\n", NSStringFromCGPoint(pnt)];
    self.teString.text = [self.teString.text stringByAppendingFormat:
                          @"（２）%f, %f\n", pnt.x, pnt.y];
    
    self.teString.text = [self.teString.text stringByAppendingFormat:@"（３）サイズ\n"];
    self.teString.text = [self.teString.text stringByAppendingFormat:
                          @"（３）%@\n", NSStringFromCGSize(siz01)];
    self.teString.text = [self.teString.text stringByAppendingFormat:
                          @"（３）%f\n", siz01.height];
    
    self.teString.text = [self.teString.text stringByAppendingFormat:@"（４）中央座標\n"];
    self.teString.text = [self.teString.text stringByAppendingFormat:
                          @"（４）%@\n", NSStringFromCGPoint(cpt)];
}

// [矩形変更（位置）]ボタンを押した時
- (IBAction)proc02:(id)sender {
    
    // 中央座標の取得
    CGPoint cnt = self.ivTarget.center;
    
    // 移動
    CGPoint mov = CGPointMake(cnt.x + 10.f,
                              cnt.y + 10.f);
    self.ivTarget .center = mov;
    
    // 移動２（エラー）
//    {
//        CGPoint pnt = self.ivTarget.frame.origin;
//        CGPoint mov = CGPointMake(cnt.x + 10.f,
//                                  cnt.y + 10.f);
//        self.ivTarget.frame.origin = mov;
//        
//    }
    
    
}

// [矩形変更（位置、サイズ）]ボタンを押した時
- (IBAction)proc03:(id)sender {
    
    // 矩形情報の
    CGRect rct = self.ivTarget.frame;
    CGPoint pnt = rct.origin;   // 原点座標
    CGSize siz = rct.size;      // サイズ
    
    // 情報変更
    CGRect newRct = CGRectMake(pnt.x -10.0f,
                               pnt.y -10.0f,
                               siz.width -5.0f,
                               siz.height -5.0);
    
    self.ivTarget.frame =newRct;
}

@end

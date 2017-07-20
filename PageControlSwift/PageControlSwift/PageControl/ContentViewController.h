//
//  ContentViewController.h
//
//  Created by Jack Humphries on 3/20/12.
//  Copyright (c) 2012 Jack Humphries. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDFScrollView.h"

@class PDFScrollView;
@protocol backButtonDelegate <NSObject>
@optional
- (void)backButtonClicked;
@end
@interface ContentViewController : UIViewController <UIScrollViewDelegate> {
    
    CGPDFDocumentRef thePDF;
    PDFScrollView *pdfScrollView;
    
}

-(id)initWithPDF:(CGPDFDocumentRef)pdf;
@property (nonatomic, weak) id <backButtonDelegate> delegate;
@property (nonatomic, strong) NSString *page;

@end

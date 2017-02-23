//
//  ViewController.m
//  PDFReader
//
//  Created by Nagam Pawan on 10/6/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import <PDFKBasicPDFViewer.h>
#import <PDFKDocument.h>



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"send"]) {
        PDFKBasicPDFViewer *viewer = (PDFKBasicPDFViewer *)segue.destinationViewController;
        PDFKDocument *document = [PDFKDocument documentWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"iphone-ios7-quick-reference" ofType:@"pdf"] password:nil];
        [viewer loadDocument:document];
        
    }
}

@end

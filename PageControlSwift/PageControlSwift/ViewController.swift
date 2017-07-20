//
//  ViewController.swift
//  PageControlSwift
//
//  Created by MOBILE MAC1 on 7/20/17.
//  Copyright © 2017 MOBILE MAC1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //1] Open PDF Button Clicked ***
    @IBAction func openPDFBtnClicked(_ sender: UIButton) {
        
       // let page = PageViewController(pdfFromWeb: "http://www.cs.cornell.edu/courses/CS4758/2012sp/materials/hmm_paper_rabiner.pdf")
        
        let path: String = Bundle.main.path(forResource: "pdf", ofType: "pdf")!
        let page = PageViewController(pdfAtPath: path)
        present(page ?? UIViewController(), animated: true) { _ in }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


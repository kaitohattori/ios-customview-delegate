//
//  CustomView.swift
//  customview-delegate
//
//  Created by kaichan on 4/12/19.
//  Copyright © 2019 Kaito Hattori. All rights reserved.
//

import UIKit

protocol CustomViewDelegate: class {
    // わかりにくい delegate
    func didClickButton(_ sender: Any)
    // わかりやすい delegate
    func customView(_ customView: CustomView, didClicked sender: Any)
}

class CustomView: UIView  {
    
    weak var delegate: CustomViewDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }
    
    private func loadNib(){
        let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIView
        self.addSubview(view)
        view.autoLayout(to: self)
    }
    
    @IBAction func clickedButton(_ sender: Any) {
        // わかりにくい delegate
        if self.delegate != nil {
            self.delegate.didClickButton(sender)
        }
        // わかりやすい delegate
        if self.delegate != nil {
            self.delegate.customView(self, didClicked: sender)
        }
    }
}

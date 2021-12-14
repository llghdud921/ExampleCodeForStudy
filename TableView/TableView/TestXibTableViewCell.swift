//
//  testXibTableViewCell.swift
//  TableView
//
//  Created by 이호영 on 2021/12/14.
//

import UIKit

class TestXibTableViewCell: UITableViewCell {

    @IBOutlet weak var testLabel: UILabel!
    
//    static var nib  : UINib{
//        return UINib(nibName: identifier, bundle: nil)
//    }
//
//    static var identifier : String{
//        return String(describing: self)
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        testLabel.text = "test"
    }
    
}

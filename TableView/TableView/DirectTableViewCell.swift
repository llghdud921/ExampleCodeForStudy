import UIKit

class DirectTableViewCell: UITableViewCell {

    var testLabel: UILabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(testLabel)
        autolayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func autolayout() {
        // autoResizing
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                testLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
                testLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
                testLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                testLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 10)
            ]
        )
    }
}

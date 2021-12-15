import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var tableView: UITableView = UITableView()
    
    let directIdentifier = "directTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        autolayout()
        
        tableView.register(DirectTableViewCell.self, forCellReuseIdentifier: directIdentifier)
    }
    
    func autolayout() {
        // autoResizing
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
                tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ]
        )
    }

}

// MARK: - tabelView datasource

extension ViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: directIdentifier, for: indexPath) as? DirectTableViewCell else {
            fatalError()
        }
        
        cell.testLabel.text = "test"
        
        return cell
    }
}


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var tableView: UITableView = UITableView()
    
    let directIdentifier = "directTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.register(DirectTableViewCell.self, forCellReuseIdentifier: directIdentifier)
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
        
        return cell
    }
}


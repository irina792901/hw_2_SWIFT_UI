import UIKIt

class FriendsController: UIViewController, UITableViewController {
  private var tableView = UITableView(frame: .zero, style: .grouped)
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      5
    }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: nill)
    cell.textLabel?.text = "Hello"
    cell.imageView?.image = UIImage(systemName: "person")
    return cell
    }
  }
 
  func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white 
    tableView.dataSource = self
    tableView.delegate = self
    view.addSubview(tableView)
    setupConstraints()
  }
  func setupConstraints() {
    tableView.translateAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnhor),
      tableView.bottomAnchor.constraint(equalTo: wiew.safeAreaLayoutGuide.bottomAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
}

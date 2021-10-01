import UIKit

var dataList = DataList()

private let cellID = "DataTableViewCell"

class firstViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    // MARK: - 생명주기
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setUpLayout()
        tableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool)
    {
        tableView.reloadData()
    }
    

    
    // MARK: -  Helper
    private func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellID, bundle: nil), forCellReuseIdentifier: cellID)
        }
        private func setUpLayout() {
        }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension firstViewController: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! DataTableViewCell
        var cellData = Data(memo: "메모")
        cellData = dataList.itemAt(index: indexPath.row)
        cell.title?.text = cellData.memo
        cell.title?.sizeToFit()
        return cell
    }
    
}

//
//  TableViewController.swift
//  Test
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!

    var tableDataSource = ["First","Second"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension TableViewController:UITableViewDelegate,UITableViewDataSource{

    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataSource.count
    }

    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellReuseIdentifier = "cellIdentifier"

        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!

        // set the text from the data model
        cell.textLabel?.text = tableDataSource[indexPath.row]

        return cell
    }

    // method to run when table view cell is select by user
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected cell number \(indexPath.row).")
    }



}


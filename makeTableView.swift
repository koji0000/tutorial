func makeTableView(frame: CGRect) -> UITableView{
        let tableView = UITableView()
        tableView.frame = frame
        tableView.autoresizingMask = [
            UIViewAutoresizing.flexibleRightMargin,
            UIViewAutoresizing.flexibleTopMargin,
            UIViewAutoresizing.flexibleLeftMargin,
            UIViewAutoresizing.flexibleBottomMargin,
            UIViewAutoresizing.flexibleWidth,
            UIViewAutoresizing.flexibleHeight
        ]
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
}

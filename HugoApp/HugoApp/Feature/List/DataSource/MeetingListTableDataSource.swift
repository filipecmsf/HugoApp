//
//  MeetingListTableDataSource.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import UIKit

class MeetingListTableDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

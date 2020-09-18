//
//  CellRepresentable.swift
//  mvvmWithoutReactive
//
//  Created by 성준 on 2020/09/18.
//  Copyright © 2020 성준. All rights reserved.
//

import Foundation
import UIKit

protocol CellRepresentable {
    var rowHeight:CGFloat {get}
    func cellInstance(_ tableView:UITableView, indexPath:IndexPath)->UITableViewCell
}

//
//  QuestionListTableViewCell.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import UIKit

class QuestionListTableViewCell: UITableViewCell {

    @IBOutlet var lblAns: UILabel!
    @IBOutlet var lblQue: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

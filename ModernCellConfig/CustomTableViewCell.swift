//
//  CustomTableViewCell.swift
//  ModernCellConfig
//
//  Created by 김미향 on 2022/03/02.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        super.updateConfiguration(using: state)
        
        var configuration = backgroundConfiguration?.updated(for: state)
        configuration?.backgroundColor = .systemMint
        
        if state.isHighlighted || state.isSelected {
            configuration?.backgroundColor = .orange
        }
        
        backgroundConfiguration = configuration
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

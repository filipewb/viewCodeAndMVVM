import Foundation
import UIKit

protocol CustomTableViewCellDelegate: AnyObject {
    func tappedHeartButton(_ user: User)
}

class CustomTableViewCell: UITableViewCell {
    
    var viewModel: CustomCellViewModel?
    
    var screen: CustomTableViewCellScreen = CustomTableViewCellScreen()
    
    private weak var delegate: CustomTableViewCellDelegate?
    
    public func delegate(delegate: CustomTableViewCellDelegate?) {
        self.delegate = delegate
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.screen.heartButton.addTarget(self, action: #selector(self.tappedHeartButton), for: .touchUpInside)
        self.screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedHeartButton() {
        guard let _viewModel = viewModel else { return }
        
        if _viewModel.getIsEnableHeart {
            self.screen.heartButton.tintColor = .blue
            self.viewModel?.exchangeHeartState(false)
        } else {
            self.screen.heartButton.tintColor = .red
            self.viewModel?.exchangeHeartState(true)
        }
        self.delegate?.tappedHeartButton(_viewModel.getUser)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.screen.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.screen.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.screen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.screen.topAnchor.constraint(equalTo: self.topAnchor),
        ])
    }
    
    func setupCell(user: User) {
        self.viewModel = CustomCellViewModel(data: user)
        
        self.screen.userImageView.image = self.viewModel?.getUserImage
        self.screen.nameLabel.text = self.viewModel?.getName
        self.screen.professionLabel.text = self.viewModel?.getProfession
        self.screen.salaryLabel.text = self.viewModel?.getSalary
        self.screen.ageLabel.text = self.viewModel?.getAge
        
        if self.viewModel?.getIsEnableHeart ?? false {
            self.screen.heartButton.tintColor = .red
        } else {
            self.screen.heartButton.tintColor = .blue
        }
    }
    
}

import Foundation

var viewModel: CustomCellViewModel?

override func awakeFromNib() {
    super.awakeFromNib()
    self.imageUserImageView.clipsToBounds = true
    self.imageUserImageView.layer?.cornerRadius = self.imageUserImageView.frame.height / 2
}

func setupCell(user: User) {
    self.viewModel = CustomCellViewModel(data: user)
    
    self.imageUserImageView.image = self.viewModel?.getUserImage
    self.nameLabel.text = self.viewModel?.getName
    self.professionLabel.text = self.viewModel?.getProfession
    self.salaryLabel.text = self.viewModel?.getSalary
    self.idadeLabel.text = self.viewModel?.getAge
    
    if self.viewModel?.getIsEnableHeart ?? false {
        self.heartButton.tintColor = .red
    } else {
        self.heartButton.tintColor = .blue
    }
}

import UIKit

class ViewModel {
    
    private var listUser:[User] = []
    
    init() {
        self.configArrayUser()
    }
    
    private func configArrayUser() {
        self.listUser.append(User(name: "Caio", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 0))
        self.listUser.append(User(name: "Fabricio", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 1))
        self.listUser.append(User(name: "Alencar", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 2))
        self.listUser.append(User(name: "Filipe", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 3))
        self.listUser.append(User(name: "Angela", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 4))
        self.listUser.append(User(name: "Mario", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 5))
        self.listUser.append(User(name: "Jonas", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 6))
    }
    
    public var numberOfRows: Int {
        return self.listUser.count
    }
    
    public func loudCurrentUser(indexPath: IndexPath) -> User {
        return self.listUser[indexPath.row]
    }
    
    public func getName(indexPath: IndexPath) -> String {
        return self.listUser[indexPath.row].name
    }
    
    public func exchangeHeartState(_ user: User) {
        if let row = self.listUser.firstIndex(where: {user.identifier == $0.identifier}) {
            self.listUser[row] = user
        }
    }
}

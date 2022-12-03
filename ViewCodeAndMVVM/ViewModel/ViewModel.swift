import UIKit

class ViewModel {
    
    private var listUser:[User] = []
    
    init() {
        self.configArrayUser()
    }
    
    private func configArrayUser() {
        self.listUser.append(User(name: "Caio", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(User(name: "Fabricio", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(User(name: "Alencar", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(User(name: "Filipe", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(User(name: "Angela", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(User(name: "Mario", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(User(name: "Jonas", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
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
}

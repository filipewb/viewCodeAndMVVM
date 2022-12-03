import UIKit

class ViewModel {
    
    private var listUser:[Pessoa] = []
    
    init() {
        self.configArrayUser()
    }
    
    private func configArrayUser() {
        self.listUser.append(Pessoa(name: "Caio", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(Pessoa(name: "Fabricio", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(Pessoa(name: "Alencar", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(Pessoa(name: "Filipe", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(Pessoa(name: "Angela", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(Pessoa(name: "Mario", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(Pessoa(name: "Jonas", age: 30, profession: "Developer iOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
    }
    
    public var numberOfRows: Int {
        return self.listUser.count
    }
    
    public func loudCurrentUser(indexPath: IndexPath) -> Pessoa {
        return self.listUser[indexPath.row]
    }
    
    public func getName(indexPath: IndexPath) -> String {
        return self.listUser[indexPath.row].name
    }
}

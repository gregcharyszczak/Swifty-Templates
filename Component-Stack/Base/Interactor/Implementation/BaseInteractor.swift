import Foundation

class BaseInteractor {
    let repository: BaseRepositoryProtocol

    init(repository: BaseRepositoryProtocol) {
        self.repository = repository
    }
}

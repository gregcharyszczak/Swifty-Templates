import Foundation

class BasePresenter {
    weak var viewController: BaseViewControllerProtocol?
    let interactor: BaseInteractorProtocol

    let model: BaseRouteModel

    init(interactor: BaseInteractorProtocol, model: BaseRouteModel) {
        self.interactor = interactor
        self.model = model
    }
}

import Foundation

class BasePresenter {
    let interactor: BaseInteractorProtocol
    weak var viewController: BaseViewControllerProtocol? {
        didSet {
            refreshViewModel()
        }
    }

    let routeModel: BaseRouteModel

    init(interactor: BaseInteractorProtocol, routeModel: BaseRouteModel) {
        self.interactor = interactor
        self.routeModel = routeModel
    }
}

extension BasePresenter {
    func refreshViewModel() {
        let viewModel = BaseViewModel()
        viewController?.model = viewModel
    }
}

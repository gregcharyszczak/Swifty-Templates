import Foundation

class BasePresenter {
    let interactor: BaseInteractorProtocol
    weak var viewController: BaseViewControllerProtocol? {
        didSet {
            refreshViewModel()
        }
    }

    init(interactor: BaseInteractorProtocol, routeModel: BaseRouteModel) {
        self.interactor = interactor
    }
}

extension BasePresenter {
    func refreshViewModel() {
        let viewModel = BaseViewModel()
        viewController?.model = viewModel
    }
}

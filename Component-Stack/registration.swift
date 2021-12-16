container.register(BaseViewController.self) { resolver in
    let eventHandler = resolver.resolve(BaseEventHandlerProtocol.self)!
    return BaseViewController(eventHandler: eventHandler)
}.implements(BaseViewControllerProtocol.self)
    container.register(BaseEventHandlerProtocol.self) { resolver in
    let interactor = resolver.resolve(BaseInteractorProtocol.self)!
    let model = resolver.resolve(BaseRouteModel.self)!
    return BasePresenter(interactor: interactor, model: model)
}.initCompleted { resolver, eventHandler in
    let presenter = eventHandler as! BasePresenter
    presenter.viewController = resolver.resolve(BaseViewControllerProtocol.self)!
}
container.register(BaseInteractorProtocol.self) { resolver in
	let repository = resolver.resolve(BaseRepositoryProtocol.self)!
    return BaseInteractor(repository: repository)
}

import UIKit

class BaseViewController: UIViewController {
    // MARK: Constants & Variables
    let eventHandler: BaseEventHandlerProtocol
    var model: BaseViewModel? {
        didSet {
            refresh()
        }
    }

    // MARK: Lifecycle
    init(eventHandler: BaseEventHandlerProtocol) {
        self.eventHandler = eventHandler
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        refresh()
    }

    // MARK: Views
}

// MARK: Initialization
extension BaseViewController {
    private func initialize() {
        self.title = "Base"
    }
}

// MARK: Refreshing
extension BaseViewController {
	private func refresh() {

	}
}

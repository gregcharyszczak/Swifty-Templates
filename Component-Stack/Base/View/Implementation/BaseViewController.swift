import UIKit

class BaseViewController: UIViewController {
    let eventHandler: BaseEventHandlerProtocol
    var model: BaseViewModel? {
        didSet {
            refresh()
        }
    }

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
    }
}

// MARK: Initialization
extension BaseViewController {
    func initialize() {
        self.title = "Base"
    }
}

// MARK: Refreshing
extension BaseViewController {
	func refresh() {

	}
}

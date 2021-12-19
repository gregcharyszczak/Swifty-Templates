import UIKit

class BaseCell: UICollectionViewCell {
    static let identifier = "BaseCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        reset()
    }
}

// MARK: Initialization
extension BaseCell {
    func initialize() {

    }
}

// MARK: Setup
extension LogCell {
    func setup() {

    }
}

// MARK: Resetting
extension BaseCell {
    func reset() {

    }
}

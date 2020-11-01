import UIKit
import SnapKit
class CollectionCell: UICollectionViewCell {

    static let id = "CollectionCell"
    let showCaseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .cyan
        imageView.image = R.image.pic0()!
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    func setCell() {

        addSubview(showCaseImageView)
        layer.borderWidth = 0

        showCaseImageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)

        setCell()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

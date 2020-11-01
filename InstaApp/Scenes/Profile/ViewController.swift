import UIKit
import SnapKit

class ProfileViewController: UIViewController {

    var collectionView: UICollectionView!
    var frame = CGRect()
    var displayWidth = CGFloat()
    var displayHeight = CGFloat()
    var layout = UICollectionViewFlowLayout()
    var navBar = UINavigationBar()
    lazy var upView: UIView = {
        let view = UIView()
        return view

    }()
    lazy var subsView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = false
        view.layer.shadowOffset = CGSize(width: 6, height: 3)
        view.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.3
        view.backgroundColor = .systemGray
        return view
    }()
// test2
    lazy var auctionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle("Auction", for: .normal)
        button.titleLabel?.font = UIFont(resource: R.font.sfProDisplayBold, size: 14)
        button.titleLabel?.textColor = #colorLiteral(red: 0.1607843137, green: 0.5921568627, blue: 1, alpha: 1)
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 6, height: 3)
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        button.setTitleColor(.cyan, for: .normal)
        return button
    }()

    lazy var myPhotosButton: UIButton = {
        let button = UIButton()
        button.setTitle("My photos", for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = .green
        button.titleLabel?.font = UIFont(resource: R.font.sfProDisplayBold, size: 14)
        button.titleLabel?.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    lazy var followButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont(resource: R.font.sfProDisplayThin, size: 14)
        button.titleLabel?.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 6, height: 3)
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        button.setTitleColor(.darkGray, for: .normal)
        return button
    }()
    lazy var sendButton:UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 6, height: 3)
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        button.layer.cornerRadius = 15
        return button
    }()
    lazy var lockButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 6, height: 3)
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        return button
    }()

    lazy var subsImg: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.backgroundColor = .white
        image.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        return image
    }()
    lazy var subsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(resource: R.font.sfProDisplayBold, size: 13)
        label.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        label.text = "text"
        return label
    }()
    lazy var twtrImg: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.backgroundColor = .black
        image.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        return image
    }()
    lazy var twtrLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(resource: R.font.sfProDisplayBold, size: 13)
        label.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        label.text = "text"
        return label
    }()
    lazy var instImg: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.backgroundColor = .black
        image.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        return image
    }()
    lazy var instLabel: UILabel = {
        let label = UILabel()
        label.text = "text"
        label.font = UIFont(resource: R.font.sfProDisplayBold, size: 13)
        label.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        return label
    }()
    lazy var ttImg: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.backgroundColor = .black
        image.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        return image
    }()
    lazy var ttLabel: UILabel = {
        let label = UILabel()
        label.text = "text"
        label.font = UIFont(resource: R.font.sfProDisplayBold, size: 13)
        label.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        return label
    }()
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.backgroundColor = .cyan
        image.layer.masksToBounds = false
        image.layer.shadowOffset = CGSize(width: 6, height: 3)
        image.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        image.layer.shadowRadius = 10
        image.layer.shadowOpacity = 0.3
        return image
    }()
    lazy var name: UILabel = {
        let label = UILabel()
        label.text = "name"
        label.font = UIFont(resource: R.font.sfProDisplayBold, size: 16)
        label.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        return label
    }()
    lazy var profession: UILabel = {
        let label = UILabel()
        label.text = "profession"
        label.font = UIFont(resource: R.font.sfProDisplayThin, size: 14)
        label.textColor = #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1)
        return label
    }()
    lazy var website: UILabel = {
        let label = UILabel()
        label.text = "website"
        label.font = UIFont(resource: R.font.sfProDisplayThin, size: 14)
        label.textColor = #colorLiteral(red: 0.1607843137, green: 0.5921568627, blue: 1, alpha: 1)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        displayWidth = self.view.frame.width
        displayHeight = self.view.frame.height
        configureCollectionView()
        confureLayout()
        configUpViews()
        setUpItems()
        setUpNavBar()
        setSubsItems()
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        (collectionView.collectionViewLayout
            as? UICollectionViewFlowLayout)?
            .footerReferenceSize
            = CGSize(width: view.bounds.width,
                     height: view.bounds.height)

    }
    func setUpItems() {
        self.upView.addSubview(auctionButton)
        self.upView.addSubview(myPhotosButton)
        self.upView.addSubview(profileImage)
        self.upView.addSubview(name)
        self.upView.addSubview(profession)
        self.upView.addSubview(website)
        self.upView.addSubview(followButton)
        self.upView.addSubview(sendButton)
        self.upView.addSubview(lockButton)
//        self.upView.addSubview(settingsButton)
        auctionButton.snp.makeConstraints { (make) in
            make.height.equalTo(35)
            make.width.equalTo(168)
            make.top.equalToSuperview().offset(303)
            make.left.equalToSuperview().offset(18)
        }
        myPhotosButton.snp.makeConstraints { (make) in
            make.height.equalTo(35)
            make.width.equalTo(168)
            make.top.equalToSuperview().offset(303)
            make.right.equalToSuperview().offset(-18)
        }
        followButton.snp.makeConstraints { (make) in
            make.width.equalTo(148)
            make.height.equalTo(28)
            make.top.equalToSuperview().offset(162)
            make.left.equalToSuperview().offset(125)
        }
        sendButton.snp.makeConstraints { (make) in
            make.width.equalTo(79)
            make.height.equalTo(29)
            make.top.equalToSuperview().offset(162)
            make.left.equalToSuperview().offset(282)
        }
        lockButton.snp.makeConstraints { (make) in
            make.width.equalTo(27)
            make.height.equalTo(27)
            make.top.equalToSuperview().offset(105)
            make.left.equalToSuperview().offset(329)
        }
        profileImage.snp.makeConstraints { (make) in
            make.height.equalTo(90)
            make.width.equalTo(90)
            make.top.equalToSuperview().offset(101)
            make.left.equalToSuperview().offset(18)
        }
        name.snp.makeConstraints { (make) in
            make.height.equalTo(16)
            make.width.equalTo(60)
            make.top.equalToSuperview().offset(104)
            make.left.equalToSuperview().offset(121)
        }
        profession.snp.makeConstraints { (make) in
            make.height.equalTo(14)
            make.width.equalTo(102)
            make.top.equalToSuperview().offset(122)
            make.left.equalToSuperview().offset(123)
        }
        website.snp.makeConstraints { (make) in
            make.height.equalTo(14)
            make.width.equalTo(74)
            make.top.equalToSuperview().offset(139)
            make.left.equalToSuperview().offset(123)
        }
    }
    func setUpNavBar() {
        configureNavigationBar(smallFont: UIFont.systemFont(ofSize: 16, weight: .bold),
                               largeFont: UIFont.systemFont(ofSize: 16, weight: .bold),
                               title: "My page",
                               textColor: #colorLiteral(red: 0.2549019608, green: 0.3137254902, blue: 0.4039215686, alpha: 1),
                               barColor: .clear)
        let arrowButton = configureNavButtton(image: R.image.arrow())
        arrowButton.addTarget(self, action: #selector(arrowAction), for: .touchUpOutside)

        let leftBarButton = UIBarButtonItem(customView: arrowButton)
        navigationItem.leftBarButtonItems = [ leftBarButton ]
        let settingsButton = configureNavButtton(image: R.image.settings())
        settingsButton.addTarget(self, action: #selector(settingsAction), for: .touchUpOutside)
        let rightBarButton = UIBarButtonItem(customView: settingsButton)
        navigationItem.rightBarButtonItems = [ rightBarButton ]
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    func setSubsItems() {
//        subsImg.snp.makeConstraints { (make) in
//            make.width.equalTo(30)
//            make.height.equalTo(30)
//        }
        let subsSv = UIStackView(arrangedSubviews: [subsImg, subsLabel])
        subsSv.axis = .vertical
        subsSv.alignment = .center
        subsSv.distribution = .fill
        subsSv.spacing = 12
        let instSv = UIStackView(arrangedSubviews: [instImg, instLabel])
        instSv.axis = .vertical
        instSv.alignment = .center
        instSv.distribution = .fill
        instSv.spacing = 12

        let twitterSv = UIStackView(arrangedSubviews: [twtrImg, twtrLabel])
        twitterSv.axis = .vertical
        twitterSv.alignment = .center
        twitterSv.distribution = .fill
        twitterSv.spacing = 12

        let ttSv = UIStackView(arrangedSubviews: [ttImg, ttLabel])
        ttSv.axis = .vertical
        ttSv.alignment = .center
        ttSv.distribution = .fill
        ttSv.spacing = 12
        let svw = UIStackView(arrangedSubviews:
                                [subsSv, instSv, twitterSv, ttSv])
        svw.axis = .horizontal
        svw.alignment = .center
        svw.distribution = .fillEqually
        svw.spacing = 54

        subsView.addSubview(svw)

        svw.snp.makeConstraints { make in
            make.top.equalTo(subsView.safeArea.top).offset(8)
            make.right.equalTo(subsView.safeArea.right).offset(-22)
            make.bottom.equalTo(subsView.safeArea.bottom).offset(-8)
            make.left.equalTo(subsView.safeArea.left).offset(22)
        }

    }
    func configureCollectionView() {
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
//        collectionView.backgroundColor = .yellow
        collectionView.isPagingEnabled = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.id)
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeArea.top).inset(UIEdgeInsets(top: 367, left: 0, bottom: 0, right: 0))
            make.width.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }

    func configUpViews() {
        view.addSubview(upView)
        upView.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeArea.top)
            make.width.equalToSuperview()
            make.bottom.equalTo(view.safeArea.top).inset(UIEdgeInsets(top: 0, left: 0, bottom: 367, right: 0))
        }
        upView.addSubview(subsView)
        subsView.snp.makeConstraints { (make) in
            make.width.equalTo(343)
            make.height.equalTo(79)
            make.top.equalToSuperview().offset(211)
            make.left.equalToSuperview().offset(18)
            make.centerX.equalToSuperview()
        }
    }

    func confureLayout() {
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        layout.scrollDirection = .vertical
    }

}
extension ProfileViewController: UICollectionViewDelegate,
                                 UICollectionViewDataSource,
                                 UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CollectionCell.id,
                for: indexPath) as? CollectionCell else { return UICollectionViewCell() }
        cell.backgroundColor = .black
        cell.setCell()
        cell.showCaseImageView.image = {
            switch indexPath.row % 7 {
                case 0:
                    return R.image.pic0()!

                case 1:
                    return R.image.pic1()!

                case 2:
                    return R.image.pic2()!

                case 3:
                    return R.image.pic3()!

                case 4:
                    return R.image.pic4()!

                case 5:
                    return R.image.pic5()!

                default:
                    return R.image.pic6()!
            }
        }()
        return cell
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        let size = CGSize(width: (displayWidth - 4 ) / 3 , height: (displayWidth - 4) / 3 )

        return size
    }

}

// MARK: - Helpers
extension ProfileViewController {
    @objc
    private func arrowAction() {
        print("arrowAction")
    }
    @objc
    private func settingsAction() {
        print("settings")
    }
    private func configureNavButtton(image: UIImage?) -> UIButton {
        let height: CGFloat = 37
        let button = UIButton(frame: CGRect(origin: .zero, size: CGSize(width: height, height: height)))
        button.setImage(image, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9294117647, green: 0.9333333333, blue: 0.9490196078, alpha: 1)
        button.layer.cornerRadius = height / 2
        button.tintColor = .clear
        button.setRoundShadow(color: UIColor.black.withAlphaComponent(0.15),
                                   radius: 5,
                                   offset: CGSize(width: 2, height: 6),
                                   opacity: 1)
        return button
    }
}

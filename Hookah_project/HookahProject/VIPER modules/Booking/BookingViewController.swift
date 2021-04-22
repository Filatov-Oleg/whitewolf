
import UIKit
import Foundation

final class BookingViewController: UIViewController {
    private let output: BookingViewOutput
    private let collectionView: UICollectionView
    private var viewModels = [BookingCardViewModel]()
    private let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
    
    
    init(_ output: BookingViewOutput){
        self.output = output
        let collectionViewLayout = UICollectionViewFlowLayout()
        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = UIView()
        view.addSubview(self.collectionView)
        self.setupCollectionView()
        self.view = view
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.output.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.collectionView.frame = CGRect(x: 8, y: 0, width: self.view.bounds.width-16, height: self.view.bounds.height)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.addSubview(activityIndicator)
        self.activityIndicator.center = self.view.center
        if self.viewModels.isEmpty {
            self.activityIndicator.startAnimating()
        }
    }
}

extension BookingViewController: BookingViewInput{
    func set(viewModels: [BookingCardViewModel]){
        self.viewModels = viewModels
        self.collectionView.reloadData()
        self.activityIndicator.stopAnimating()
        self.activityIndicator.removeFromSuperview()
    }
}

extension BookingViewController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let viewModel = self.viewModels[indexPath.item]
        let cell = collectionView.dequeueCell(cellType: BookingViewCell<BookingCardView>.self, for: indexPath)
        cell.backgroundColor = .darkGray
        cell.containerView.update(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        self.output.showBookingDetailVC(bookingCardViewModel:  self.viewModels[indexPath.item])
    }
    
}

extension BookingViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let ratio: CGFloat = 0.25
        let width = collectionView.frame.width - collectionView.contentInset.left - collectionView.contentInset.right
        let height = width * ratio
        return CGSize(width: width, height: height)
    }
    
}

private extension BookingViewController {
    func setupCollectionView(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(BookingViewCell<BookingCardView>.self)
        self.collectionView.backgroundColor = .black
        self.collectionView.showsVerticalScrollIndicator = false
        self.collectionView.register(UINib(nibName: "OfferHeaderCell", bundle: nil), forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: "OfferHeaderCell")
        self.collectionView.register(UINib(nibName: "APRHeaderCell", bundle: nil), forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: "APRHeaderCell")
        //self.collectionView.contentInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    }
}

//
//  BookingDetailView.swift
//  HookahProject
//
//  Created by Олег Филатов on 05.11.2020.
//

import UIKit
import Kingfisher

class BookingDetailViewController : UIViewController {
    private var output: BookingDetailViewOutput
    
    private var bookingDetailView: BookingDetailView {
        self.view as! BookingDetailView
    }
    
    init(output: BookingDetailViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func loadView() {
        self.view = BookingDetailView()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bookingDetailView.backgroundColor = .black

    }
}

extension BookingDetailViewController: BookingDetailViewInput {
    func setupBookingDetail(bcvm: BookingCardViewModel) {
        self.bookingDetailView.imageView.kf.setImage(with: bcvm.imageNameURL)
        self.bookingDetailView.titleLabel.text = bcvm.title
        self.bookingDetailView.shortDescriptionLabel.text = bcvm.shortDescription
        self.bookingDetailView.infoLabel.set(text: bcvm.info)
    }
}

//
//  UIModels.swift
//  Dokan
//
//  Created by Clara Mounir Adly on 28/07/2022.
//
import Foundation
import UIKit

struct ReviewsUiModel {
    var reviewsCount: Int
    var rate: Double
    var reviews: [ReviewerTableViewCell.ViewModel]
    var imageReview: UIImage
}

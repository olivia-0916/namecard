//
//  Namecard.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import Foundation
struct Namecard: Decodable {
    var name: String
    var job: String
    var company: String
    var email: String
    var address: String
    var mobile: String
    var photoimage: String?
}

//
//  NibAndReuseIdentifier.swift
//  Generics
//
//  Created by macmini47 on 15/04/21.
//

import Foundation
import UIKit

public protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    public static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

public protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView where  Self: UIView {
    public static var nibName: String {
        return String(describing: self)
    }
}


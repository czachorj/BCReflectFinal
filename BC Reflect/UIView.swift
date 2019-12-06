//
//  UIView.swift
//  BC Reflect
//
//  Created by Jess on 12/5/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func fadeIn(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
                self.alpha = 1.0
                }, completion: completion)
    }
}

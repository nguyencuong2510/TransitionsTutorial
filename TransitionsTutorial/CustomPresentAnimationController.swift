//
//  CustomPresentAnimationController.swift
//  TransitionsTutorial
//
//  Created by admin on 9/4/18.
//  Copyright © 2018 cuongnv. All rights reserved.
//

import UIKit

class CustomPresentAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 2.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let fromViewController = transitionContext.viewController(forKey: .from)!
        let toViewController = transitionContext.viewController(forKey: .to)!
        let finalFrameForVC = transitionContext.finalFrame(for: toViewController)
        let containerView = transitionContext.containerView
        
        //MARK: trả về một hình chữ nhật có origin được offset (bù đắp) từ view Final
        // dx and dy: giá trị offset từ vị trí x và y
        toViewController.view.frame = finalFrameForVC.offsetBy(dx: 50, dy: -toViewController.view.bounds.size.height)
        containerView.addSubview(toViewController.view)
        
        UIView.animate(withDuration: self.transitionDuration(using: transitionContext), delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: .curveLinear, animations: {
            fromViewController.view.alpha = 0.5
            toViewController.view.frame = finalFrameForVC
        }) { (finished) in
            transitionContext.completeTransition(true)
            fromViewController.view.alpha = 1
        }
    }
    

}

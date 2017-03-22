//
//  KeyboardShift.swift
//  Doozyrama
//
//  Created by Mikhail on 31.01.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class KeyboardShift: NSObject {
    
    private var isSubscribed = false
    
    private weak var _field: UITextField!
    weak var field: UITextField! {
        set {
            _field = newValue
            
            if !isSubscribed {
                isSubscribed = true
                
                subscribe()
            }
        }
        get {
            return _field
        }
    }
    
    private let keyboardAnimationDuration: TimeInterval = 0.3
    private let keyboardShiftExtra: CGFloat = 20.0
    
    init(textField: UITextField) {
        super.init()
        
        field = textField
    }
    
    deinit {
        unsubscribe()
    }
    
    // MARK: Notifications
    
    func keyboardWillShown(notification: NSNotification) {
        
        if !field.isEditing {
            return
        }
        
        if let keyboardFrame = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let keyboardHeight = keyboardFrame.height
            
            if let textFieldOnScreen = field.superview?.convert(field.frame, to: nil),
                let strongScreenView = screenView() {
                
                let shiftedHeight = strongScreenView.frame.minY
                
                var shift = strongScreenView.bounds.height - keyboardHeight
                shift -= keyboardShiftExtra + textFieldOnScreen.maxY - shiftedHeight
                
                if shift < 0 || shiftedHeight < 0 {
                    
                    if shift > 0 {
                        shift = 0.0
                    }
                    
                    animate { [weak self] in
                        if let strongScreenView = self?.screenView() {
                            strongScreenView.frame = strongScreenView.bounds.offsetBy(dx: 0.0, dy: shift)
                        }
                    }
                }
            }
        }
    }
    
    func keyboardWillHidden(notification: NSNotification) {
        
        if !field.isEditing {
            return
        }
        
        animate { [weak self] in
            if let strongScreenView = self?.screenView() {
                var topOffset: CGFloat = 0.0
                
                if let strongController = strongScreenView.next as? UIViewController {
                    if let navigationBar = strongController.navigationController?.navigationBar
                        , !navigationBar.isTranslucent {
                        
                        topOffset += navigationBar.bounds.height
                        topOffset += UIApplication.shared.statusBarFrame.height
                    }
                }
                
                strongScreenView.frame = CGRect(
                    origin: CGPoint(x: 0.0, y: topOffset),
                    size: strongScreenView.bounds.size)
            }
        }
    }
    
    // MARK: Private Methods
    
    private func animate(block: @escaping () -> ()) {
        UIView.animate(
            withDuration: keyboardAnimationDuration,
            animations: { block() })
    }
    
    private func screenView() -> UIView? {
        var view = field.superview
        
        repeat {
            
            guard let classDescription = view?.superview?.classForCoder.description()
                else { return nil }
            
            if "UIViewControllerWrapperView" == classDescription
                || "UITransitionView" == classDescription {
                return view
            }
            
            view = view?.superview
            
        } while true
    }
    
    private func subscribe() {
        let defaultCenter = NotificationCenter.default
        
        defaultCenter.addObserver(
            self,
            selector: #selector(KeyboardShift.keyboardWillShown(notification:)),
            name: NSNotification.Name.UIKeyboardWillShow,
            object: nil)
        
        defaultCenter.addObserver(
            self,
            selector: #selector(KeyboardShift.keyboardWillHidden(notification:)),
            name: NSNotification.Name.UIKeyboardWillHide,
            object: nil)
    }
    
    private func unsubscribe() {
        let defaultCenter = NotificationCenter.default
        defaultCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        defaultCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
}

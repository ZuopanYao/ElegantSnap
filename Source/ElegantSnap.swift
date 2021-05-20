//
//  BriefSnap.swift
//  CCVideo
//
//  Created by Harvey on 2020/1/1.
//  Copyright © 2020 Harvey/姚作潘. All rights reserved.
//

import SnapKit

#if os(macOS)
import Cocoa
public typealias ElegantView = NSView
#else
import UIKit
public typealias ElegantView = UIView
#endif

public class ElegantSnap {
    
    var constraints: [Constraint] = []
}

public extension ElegantSnap {
    
    enum Constraint {
        
        case top(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case bottom(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case leading( _ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case trailing(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case center(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case centerX(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case centerY(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case width(_ equalTo: ConstraintRelatableTarget? = nil)
        case height(_ equalTo: ConstraintRelatableTarget? = nil)
        case edges(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case directionalEdges(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case size(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        case lastBaseline(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, OSX 10.11, *)
        case firstBaseline(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case leftMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case rightMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case topMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case bottomMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case leadingMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case trailingMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case centerXWithinMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case centerYWithinMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case margins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case directionalMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
        
        @available(iOS 8.0, *)
        case centerWithinMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil)
    }
}

// MARK: - For Chain Call
extension ElegantSnap {
    
    public func top(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.top(equalTo, offset))
        return self
    }
    
    public func bottom(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.bottom(equalTo, offset))
        return self
    }
    
    public func leading( _ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.leading(equalTo, offset))
        return self
    }
    
    public func trailing(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.trailing(equalTo, offset))
        return self
    }
    
    public func center(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.center(equalTo, offset))
        return self
    }
    
    public func centerX(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.centerX(equalTo, offset))
        return self
    }
    
    public func centerY(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.centerY(equalTo, offset))
        return self
    }
    
    public func width(_ equalTo: ConstraintRelatableTarget? = nil) -> Self {
        constraints.append(.width(equalTo))
        return self
    }
    
    public func height(_ equalTo: ConstraintRelatableTarget? = nil) -> Self {
        constraints.append(.height(equalTo))
        return self
    }
    
    public func edges(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.edges(equalTo, offset))
        return self
    }
    
    public func directionalEdges(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.directionalEdges(equalTo, offset))
        return self
    }
    
    public func size(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.size(equalTo, offset))
        return self
    }
    
    public func lastBaseline(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.lastBaseline(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, OSX 10.11, *)
    public func firstBaseline(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.firstBaseline(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func leftMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.leftMargin(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func rightMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.rightMargin(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func topMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.topMargin(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func bottomMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.bottomMargin(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func leadingMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.leadingMargin(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func trailingMargin(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.trailingMargin(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func centerXWithinMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.centerXWithinMargins(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func centerYWithinMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.centerYWithinMargins(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func margins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.margins(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func directionalMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.directionalMargins(equalTo, offset))
        return self
    }
    
    @available(iOS 8.0, *)
    public func centerWithinMargins(_ equalTo: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) -> Self {
        constraints.append(.centerWithinMargins(equalTo, offset))
        return self
    }
    
    public func end() { }
}

public extension ElegantView {
    
    private func convert(make: ConstraintMaker, constraints: [ElegantSnap.Constraint]) {
        
        constraints.forEach { (extendable) in
            switch extendable {
                
            case .top(let equalTo, let offset):
                make.top.equal(equalTo, offset)
                
            case .bottom(let equalTo, let offset):
                make.bottom.equal(equalTo, offset)
                
            case .leading(let equalTo, let offset):
                make.leading.equal(equalTo, offset)
                
            case .trailing(let equalTo, let offset):
                make.trailing.equal(equalTo, offset)
                
            case .center(let equalTo, let offset):
                make.center.equal(equalTo, offset)
                
            case .centerX(let equalTo, let offset):
                make.centerX.equal(equalTo, offset)
                
            case .centerY(let equalTo, let offset):
                make.centerY.equal(equalTo, offset)
                
            case .width(let equalTo):
                make.width.equal(equalTo)
                
            case .height(let equalTo):
                make.height.equal(equalTo)
                
            case .lastBaseline(let equalTo, let offset):
                make.lastBaseline.equal(equalTo, offset)
                
            case .firstBaseline(let equalTo, let offset):
                make.firstBaseline.equal(equalTo, offset)
                
            case .leftMargin(let equalTo, let offset):
                make.leftMargin.equal(equalTo, offset)
                
            case .rightMargin(let equalTo, let offset):
                make.rightMargin.equal(equalTo, offset)
                
            case .topMargin(let equalTo, let offset):
                make.topMargin.equal(equalTo, offset)
                
            case .bottomMargin(let equalTo, let offset):
                make.bottomMargin.equal(equalTo, offset)
                
            case .leadingMargin(let equalTo, let offset):
                make.leadingMargin.equal(equalTo, offset)
                
            case .trailingMargin(let equalTo, let offset):
                make.trailingMargin.equal(equalTo, offset)
                
            case .centerXWithinMargins(let equalTo, let offset):
                make.centerXWithinMargins.equal(equalTo, offset)
                
            case .centerYWithinMargins(let equalTo, let offset):
                make.centerYWithinMargins.equal(equalTo, offset)
                
            case .edges(let equalTo, let offset):
                make.edges.equal(equalTo, offset)
                
            case .directionalEdges(let equalTo, let offset):
                make.directionalEdges.equal(equalTo, offset)
                
            case .size(let equalTo, let offset):
                make.size.equal(equalTo, offset)
                
            case .margins(let equalTo, let offset):
                make.margins.equal(equalTo, offset)
                
            case .directionalMargins(let equalTo, let offset):
                make.directionalMargins.equal(equalTo, offset)
                
            case .centerWithinMargins(let equalTo, let offset):
                make.centerWithinMargins.equal(equalTo, offset)
            }
        }
    }
    
    func make(_ constraints: [ElegantSnap.Constraint]) {
        snp.makeConstraints { convert(make: $0, constraints: constraints) }
    }
    
    func remake(_ constraints: [ElegantSnap.Constraint]) {
        snp.remakeConstraints { convert(make: $0, constraints: constraints) }
    }
    
    func update(_ constraints: [ElegantSnap.Constraint]) {
        snp.updateConstraints { convert(make: $0, constraints: constraints) }
    }
    
    /// remove Constraints
    func remove() {
        snp.removeConstraints()
    }
    
    func addSubview(_ view: ElegantView, constraints: [ElegantSnap.Constraint]) {
        addSubview(view)
        view.make(constraints)
    }
}

extension ConstraintMakerExtendable {
    
    fileprivate func equal(_ to: ConstraintRelatableTarget? = nil, _ offset: ConstraintOffsetTarget? = nil) {
        
        if let _ = to {
            if let _ = offset { equalTo(to!).offset(offset!)}
            else { equalTo(to!) }
        }else {
            if let _ = offset { equalToSuperview().offset(offset!)}
            else { equalToSuperview() }
        }
    }
}

public extension ElegantSnap {
    
    enum Direction {
        case horizontal
        case vertical
    }
    
    typealias Spacing = (lead: ConstraintOffsetTarget, tail: ConstraintOffsetTarget, gap: ConstraintOffsetTarget)
}

public extension Array where Element: ElegantView {
    
    func make(_ constraints: [ElegantSnap.Constraint], spacing: ElegantSnap.Spacing, direction: ElegantSnap.Direction) {
        
        for index in 0..<count {
            
            let aView = self[index]
            var _constraints: [ElegantSnap.Constraint] = constraints
            
            if aView == first! {
                if direction == .horizontal {
                    _constraints.append(.leading(nil, spacing.lead))
                    _constraints.append(.width(self[index+1].snp.width))
                } else {
                    _constraints.append(.top(nil, spacing.lead))
                    _constraints.append(.height(self[index+1].snp.height))
                }
            }else if aView == last! {
                if direction == .horizontal {
                    _constraints.append(.trailing(nil, spacing.tail))
                    _constraints.append(.leading(self[index-1].snp.trailing, spacing.gap))
                } else {
                    _constraints.append(.bottom(nil, spacing.tail))
                    _constraints.append(.top(self[index-1].snp.bottom, spacing.gap))
                }
            }else {
                if direction == .horizontal {
                    _constraints.append(.leading(self[index-1].snp.trailing, spacing.gap))
                    _constraints.append(.width(self[index+1].snp.width))
                } else {
                    _constraints.append(.top(self[index-1].snp.bottom, spacing.gap))
                    _constraints.append(.height(self[index+1].snp.height))
                }
            }
            
            aView.make(_constraints)
        }
    }
}

public extension ElegantView {
    
    func addSubview(_ views: [ElegantView], constraints: [ElegantSnap.Constraint], spacing: ElegantSnap.Spacing, direction: ElegantSnap.Direction) {
        views.forEach { (aView) in addSubview(aView) }
        views.make(constraints, spacing: spacing, direction: direction)
    }
}

// MARK: - For Chain Call
public extension ElegantView {
    
    /// Chain Call
    func make(_ constraintClosure: (ElegantSnap) -> Void) {
        let snap: ElegantSnap = .init()
        constraintClosure(snap)
        make(snap.constraints)
    }
    
    /// Chain Call
    func remake(_ constraintClosure: (ElegantSnap) -> Void) {
        let snap: ElegantSnap = .init()
        constraintClosure(snap)
        remake(snap.constraints)
    }
    
    /// Chain Call
    func update(_ constraintClosure: (ElegantSnap) -> Void) {
        let snap: ElegantSnap = .init()
        constraintClosure(snap)
        update(snap.constraints)
    }
    
    /// Chain Call
    func addSubview(_ view: ElegantView, constraintClosure: (ElegantSnap) -> Void) {
        addSubview(view)
        view.make(constraintClosure)
    }
}

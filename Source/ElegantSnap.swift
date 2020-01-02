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

public struct ElegantSnap {
    
}

extension ElegantSnap {
    
    public enum Constraint {
        
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

extension ElegantView {
    
    public func make(_ constraints: [ElegantSnap.Constraint]) {
        
        snp.makeConstraints { (make) in
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
    }
    
    public func addSubview(_ view: ElegantView, constraints: [ElegantSnap.Constraint]) {
        
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

extension ElegantSnap {
    
    public enum Direction {
        
        case horizontal
        case vertical
    }
    
    public typealias Spacing = (lead: ConstraintOffsetTarget, tail: ConstraintOffsetTarget, gap: ConstraintOffsetTarget)
}

extension Array where Element: ElegantView {
    
    public func make(_ constraints: [ElegantSnap.Constraint], spacing: ElegantSnap.Spacing, direction: ElegantSnap.Direction) {
        
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

extension ElegantView {
    
    public func addSubview(_ views: [ElegantView], constraints: [ElegantSnap.Constraint], spacing: ElegantSnap.Spacing, direction: ElegantSnap.Direction) {
        
        views.forEach { (aView) in addSubview(aView) }
        views.make(constraints, spacing: spacing, direction: direction)
    }
}

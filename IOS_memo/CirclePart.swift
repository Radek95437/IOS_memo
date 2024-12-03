//
//  CirclePart.swift
//  IOS_memo
//
//  Created by student on 03.12.2024.
//

import SwiftUI
import CoreGraphics

struct CirclePart: Shape {
    var startAngle: Angle = Angle.zero
    let endAngle: Angle
    var clockwise = true
    
    
    func path(in rect: CGRect) -> Path {
        let startAngle = startAngle - .degrees(90)
        let endAngle = endAngle - .degrees(90)
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(x: center.x + radius * cos(startAngle.radians), y: center.y + radius * sin(startAngle.radians))
        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: !clockwise)
        p.addLine(to: center)
        return p
    }
}

#Preview {
    CirclePart(startAngle: .degrees(0), endAngle: .degrees(270))
}

//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OpenTelemetry open source project
//
// Copyright (c) 2021 Moritz Lang and the Swift OpenTelemetry project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import NIO
import OpenTelemetry

struct FailingSpanExporter: OTel.SpanExporter {
    private let eventLoopGroup: EventLoopGroup
    private let error: Error

    init(eventLoopGroup: EventLoopGroup, error: Error) {
        self.eventLoopGroup = eventLoopGroup
        self.error = error
    }

    func export(_ batch: ArraySlice<OTel.RecordedSpan>, on resource: OTel.Resource) -> EventLoopFuture<Void> {
        eventLoopGroup.next().makeFailedFuture(error)
    }
}
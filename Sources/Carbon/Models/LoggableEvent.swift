//
//  LoggableEvent.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

public protocol LoggableEvent {
    var eventName: String { get }
    var parameters: [String: Any]? { get }
    var type: LogType { get }
}

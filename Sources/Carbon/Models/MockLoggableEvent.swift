//
//  MockLoggableEvent.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

public struct AnyLoggableEvent: LoggableEvent {
    
    public var eventName: String
    public var type: LogType
    public var parameters: [String: Any]?

    public init(eventName: String, parameters: [String : Any]? = nil, type: LogType = .analytic) {
        self.eventName = eventName
        self.parameters = parameters
        self.type = type
    }
}


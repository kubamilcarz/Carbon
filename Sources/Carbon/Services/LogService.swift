//
//  LogService.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

public protocol LogService: Sendable {
    
    func identifyUser(userId: String, name: String?, email: String?)
    func addUserProperties(dict: [String: Any], isHighPriority: Bool)
    func deleteUserProfile()

    func trackEvent(event: LoggableEvent)
    func trackScreenView(event: LoggableEvent)
}

//
//  TelemetryDeckService.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

import SwiftUI
import TelemetryDeck

public struct TelemetryDeckService: LogService {

    public init(token: String, loggingEnabled: Bool = false) {
        let config = TelemetryDeck.Config(appID: token)
        TelemetryDeck.initialize(config: config)
    }
    
    public func identifyUser(userId: String, name: String?, email: String?) {
        TelemetryDeck.updateDefaultUserID(to: userId)
    }
        
    public func addUserProperties(dict: [String : Any], isHighPriority: Bool) {
        // TelemetryDeck allows up to 100 User Properties, keys limited to 255 characters
        // Currently, the SDK does not support setting persistent user properties.
        // You can include these properties as parameters in individual signals.
    }
    
    public func deleteUserProfile() {
        // Reset the user identifier to remove association with the current user
        TelemetryDeck.updateDefaultUserID(to: nil)
    }
    
    public func trackEvent(event: any LoggableEvent) {
        TelemetryDeck.signal(
            event.eventName,
            parameters: event.parameters?.toStringDictionary() ?? [:]
        )
    }
    
    public func trackScreenView(event: any LoggableEvent) {
        TelemetryDeck.signal(
            event.eventName,
            parameters: event.parameters?.toStringDictionary() ?? [:]
        )
    }
}

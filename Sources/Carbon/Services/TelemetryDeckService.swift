//
//  TelemetryDeckService.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

import SwiftUI
import TelemetryDeck

struct TelemetryDeckService: LogService {

    init(token: String, loggingEnabled: Bool = false) {
        let config = TelemetryDeck.Config(appID: token)
        TelemetryDeck.initialize(config: config)
    }
    
    func identifyUser(userId: String, name: String?, email: String?) {
        TelemetryDeck.updateDefaultUserID(to: userId)
    }
        
    func addUserProperties(dict: [String : Any], isHighPriority: Bool) {
        // TelemetryDeck allows up to 100 User Properties, keys limited to 255 characters
        // Currently, the SDK does not support setting persistent user properties.
        // You can include these properties as parameters in individual signals.
    }
    
    func deleteUserProfile() {
        // Reset the user identifier to remove association with the current user
        TelemetryDeck.updateDefaultUserID(to: nil)
    }
    
    func trackEvent(event: any LoggableEvent) {
        TelemetryDeck.signal(
            event.eventName,
            parameters: event.parameters?.toStringDictionary() ?? [:]
        )
    }
    
    func trackScreenView(event: any LoggableEvent) {
        TelemetryDeck.signal(
            event.eventName,
            parameters: event.parameters?.toStringDictionary() ?? [:]
        )
    }
}

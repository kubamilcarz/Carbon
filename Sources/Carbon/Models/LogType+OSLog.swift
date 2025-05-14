//
//  LogType+OSLog.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

import OSLog

extension LogType {
    var OSLogType: OSLogType {
        switch self {
        case .info:
            return .info
        case .analytic:
            return .default
        case .warning:
            return .error
        case .severe:
            return .fault
        }
    }
}

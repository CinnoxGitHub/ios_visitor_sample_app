//
//  NotificationService.swift
//  ExampleNotificationService
//
//  Created by Jimmy on 2023/7/17.
//

import UserNotifications
import CinnoxVisitorCoreSDK

class NotificationService: UNNotificationServiceExtension {
    public var notificationHandler: NotificationServiceHandler

    override init() {
        self.notificationHandler = CinnoxVisitorCoreNotificationServiceHandler()
        super.init()
    }

    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        notificationHandler.handleNotificationRequest(request, withCinnoxContentHandler: contentHandler, nonCinnoxContent: {
            if let bestAttemptContent = (request.content.mutableCopy() as? UNMutableNotificationContent) {
                contentHandler(bestAttemptContent)
            }
        })
    }
}


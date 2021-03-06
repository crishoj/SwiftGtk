//
//  Copyright © 2016 Tomas Linhart. All rights reserved.
//

import CGtk

public class Calendar: Widget {
    public override init() {
        super.init()
        
        widgetPointer = gtk_calendar_new()
    }
    
    public var year: Int {
        get {
            return getProperty(UnsafeMutablePointer(widgetPointer), name: "year")
        }
        set {
            setProperty(UnsafeMutablePointer(widgetPointer), name: "year", newValue: newValue)
        }
    }
    
    public var showHeading: Bool {
        get {
            return getProperty(UnsafeMutablePointer(widgetPointer), name: "show-heading")
        }
        set {
            setProperty(UnsafeMutablePointer(widgetPointer), name: "show-heading", newValue: newValue)
        }
    }
}

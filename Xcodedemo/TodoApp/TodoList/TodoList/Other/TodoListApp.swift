import SwiftUI
import FirebaseCore

@main
struct TodoListApp: App {
    
    // Optional: Create an AppDelegate if you need to handle other lifecycle events (e.g., push notifications)
    class AppDelegate: NSObject, UIApplicationDelegate {
        func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
        ) -> Bool {
            // Firebase initialization here is already handled in the main struct, no need to call it here.
            print("ℹ️ Firebase configuration check - handled in main struct.")
            return true
        }
    }
    
    // Tying the AppDelegate to the application lifecycle
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        // Double-check Firebase configuration in the App main struct
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
            print("✅ Firebase configured successfully from main.")
        } else {
            print("ℹ️ Firebase already configured from main.")
        }
    }

    var body: some Scene {
        WindowGroup {
            MainView()  // Your main content view
        }
    }
}

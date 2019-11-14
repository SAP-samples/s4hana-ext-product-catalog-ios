import SAPFiori
import SAPFioriFlows
import SAPFoundation
import SAPCommon
import SAPOData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate, ConnectivityObserver {
    
    // MARK: - Properties
    
    var window: UIWindow?
    
    /// Logger instance initialization
    private let logger = Logger.shared(named: "AppDelegateLogger")
    private var flowProvider = OnboardingFlowProvider()
    
    /// Delegate implementation of the application in a custom class
    var onboardingErrorHandler: OnboardingErrorHandler?
    
    /// Application controller instance for the application
    var sessionManager: OnboardingSessionManager<ApplicationOnboardingSession>!
    
    // MARK: - Lifecycles
    
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Set a FUIInfoViewController as the rootViewController, since there it is none set in the Main.storyboard
        // Also, hide potentially sensitive data of the real application screen during onboarding
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = FUIInfoViewController.createSplashScreenInstanceFromStoryboard()
        
        
        self.initializeOnboarding()
        ConnectivityReceiver.registerObserver(self)
        
        UINavigationBar.applyFioriStyle()
        
        return true
    }
    
    func applicationDidEnterBackground(_: UIApplication) {
        // Hides the application UI by presenting a splash screen, @see: ApplicationUIManager.hideApplicationScreen
        OnboardingSessionManager.shared.lock { _ in }
    }
    
    func applicationWillEnterForeground(_: UIApplication) {
        // Triggers to show the passcode screen
        OnboardingSessionManager.shared.unlock { error in
            guard let error = error else {
                return
            }
            
            self.onboardingErrorHandler?.handleUnlockingError(error)
        }
    }
    
    // MARK: - UISplitViewControllerDelegate
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
        
        if !topAsDetailController.isBeingPresented {
            return true
        }
        return false
    }
    
    func application(_: UIApplication, supportedInterfaceOrientationsFor _: UIWindow?) -> UIInterfaceOrientationMask {
        // Onboarding is only supported in portrait orientation
        switch OnboardingFlowController.presentationState {
        case .onboarding, .restoring:
            return .portrait
        default:
            return .allButUpsideDown
        }
    }
}

// Convenience accessor for the AppDelegate
extension AppDelegate {
    static var shared: AppDelegate {
        return (UIApplication.shared.delegate as! AppDelegate)
    }
}

// MARK: – Onboarding related functionality

// MARK: OnboardingSessionManager helper extension

extension OnboardingSessionManager {
    static var shared: OnboardingSessionManager<ApplicationOnboardingSession>! {
        return AppDelegate.shared.sessionManager
    }
}

extension AppDelegate {
    /// Setup an onboarding session instance
    func initializeOnboarding() {
        let presentationDelegate = ApplicationUIManager(window: self.window!)
        self.onboardingErrorHandler = OnboardingErrorHandler()
        self.sessionManager = OnboardingSessionManager(presentationDelegate: presentationDelegate, flowProvider: self.flowProvider, delegate: self.onboardingErrorHandler)
        presentationDelegate.showSplashScreenForOnboarding { _ in }
        
        self.onboardUser()
    }
    
    /// Application specific code after successful onboard
    func afterOnboard() {
        guard let _ = self.sessionManager.onboardingSession else {
            fatalError("Invalid state")
        }
    }
    
    /// Start onboarding a user
    func onboardUser() {
        self.sessionManager.open { error in
            if let error = error {
                self.onboardingErrorHandler?.handleOnboardingError(error)
                return
            }
            self.afterOnboard()
        }
    }
}

// MARK: - ConnectivityObserver implementation

extension AppDelegate {
    func connectionEstablished() {
        // connection established
        self.logger.info("Connection established.")
    }
    
    func connectionChanged(_ previousReachabilityType: ReachabilityType, reachabilityType _: ReachabilityType) {
        // connection changed
        self.logger.info("Connection changed.")
        if case previousReachabilityType = ReachabilityType.offline {
            // connection established
            self.flowProvider.runSynchingFlow = true
            OnboardingSessionManager.shared.open { error in
                if let error = error {
                    self.logger.error("Error in opeing session", error: error)
                }
            }
        }
    }
    
    func connectionLost() {
        // connection lost
        self.logger.info("Connection lost.")
    }
}

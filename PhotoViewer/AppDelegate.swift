import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let wrapper: APIWrapper500pxProtocol = APIWrapper500pxMock()
        let photoList = wrapper.popularPhotos("key")
        
        let nav = window?.rootViewController as! UINavigationController
        let rootViewController = nav.topViewController as! PhotoListViewController
        rootViewController.photoList = photoList    // property dependency injection
        
        // typhoon framework de inyeccion de dependencias
        
        return true
    }

}


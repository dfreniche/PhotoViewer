import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var photoTitle: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    
    var photo: Photo? {
        didSet {
            self.photoTitle.text = photo?.name
            self.photoImage.image = UIImage(named: "dogPlaceholder")
            
            // Grand Central Dispatch
            
            let queue: dispatch_queue_t = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)
            // trailing closure
            dispatch_async(queue) { () -> Void in
                let image = self.photo?.photoURL?.loadImage()   // background
                
                dispatch_sync(dispatch_get_main_queue(), { () -> Void in
                    self.photoImage.image = image                   // main thread
                })
            }
        }
    }
}

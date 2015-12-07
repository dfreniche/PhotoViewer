import UIKit

extension String {
    func loadImage() -> UIImage {
        if let url = NSURL(string: self),
            let data = NSData(contentsOfURL: url),
            let image = UIImage(data: data) {
                return image
        }
        return UIImage()
    }
}
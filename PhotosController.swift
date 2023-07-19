import UIKit
class PhotosController: UICollectoinViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "CollectionView"
    view.backgroundColor = .white
    collectionView.dataSource = self
    colectionView.delegate = self
    colelctionView.register(CustomCollectionCell.self, forCellWithReuseIdentifier: "cell")
  }  
  extension PhotosController {
    override func collectionView (_ collectionVoew: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  navigationController?.pushViewController(CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()), animated: true)
    }
  }
}

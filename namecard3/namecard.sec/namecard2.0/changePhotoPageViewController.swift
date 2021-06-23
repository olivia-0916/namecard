//
//  changePhotoPageViewController.swift
//  namecard2.0
//
//  Created by 黃曉柔 on 2021/6/15.
//

import UIKit

class changePhotoPageViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    
    @IBOutlet weak var buttonImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func libraryPicker(){
        let photoController = UIImagePickerController()
        photoController.delegate = self
        photoController.sourceType = .photoLibrary
        present(photoController, animated: true, completion: nil)
    }
    func camera(){
        let cameraController = UIImagePickerController()
        cameraController.delegate = self
        cameraController.sourceType = .camera
        present(cameraController, animated: true, completion: nil)
    }
  
    
    //點擊
    @IBAction func imageButton(_ sender: UIButton) {
        let controller = UIAlertController(title: "選擇相片", message: nil, preferredStyle: .actionSheet)
        //相機
        let cameraAction = UIAlertAction(title:"開啟相機", style: .default){(_) in
            self.camera()
        }
        //相簿
        let libraryAction = UIAlertAction(title: "從相簿選擇", style: .default){(_) in
            self.libraryPicker()
        }
    
        //取消
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        
        controller.addAction(cameraAction)
        controller.addAction(libraryAction)
        controller.addAction(cancelAction)
        present(controller, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        buttonImage.setImage(image, for: .normal)
        dismiss(animated: true, completion: nil)
    }

    

}

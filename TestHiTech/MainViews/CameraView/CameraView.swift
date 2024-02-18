//
//  CameraView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI
import UIKit

import SwiftUI

// Определение структуры для представления, которое будет работать с камерой
struct CameraView: View {
    @State private var showCamera = false
    @State private var image: Image?

    var body: some View {
            UIImagePickerControllerView(image: $image, isPresented: $showCamera)
            .ignoresSafeArea()
    }
}

struct UIImagePickerControllerView: UIViewControllerRepresentable {
    @Binding var image: Image?
    @Binding var isPresented: Bool

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .camera
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: UIImagePickerControllerView
        init(_ parent: UIImagePickerControllerView) {
            self.parent = parent
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = Image(uiImage: uiImage)
            }
            parent.isPresented = false
        }
    }
}

#Preview {
    CameraView()
}

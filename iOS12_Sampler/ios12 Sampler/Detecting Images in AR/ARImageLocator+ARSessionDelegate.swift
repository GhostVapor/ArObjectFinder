//
//  ARImageLocator+ARSessionDelegate.swift
//  ios12 Sampler
//
//  
//  
//

import ARKit

extension ARImageLocator: ARSessionDelegate {
    
    func session(_ session: ARSession, cameraDidChangeTrackingState camera: ARCamera) {
        /// Notify users about current tracking camera quality
        statusViewController.showCameraQualityInfo(trackingState: camera.trackingState, autoHide: true)

        switch camera.trackingState {
        case .notAvailable:
            statusViewController.showRecommendationForCameraQuality(trackingState: camera.trackingState,
                                                                    duration: 3, autoHide: false)
        default:
            break
        }
    }

}

//
//  SCKOutputFormat.swift
//  SoundControlKit
//
//  Created by Bilal Bakhrom on 25/09/24.
//

import Foundation
import AVFoundation

/// Supported audio formats.
public enum SCKOutputFormat: Sendable, CaseIterable {
    case aac  // MPEG-4 AAC
    case m4a  // Apple Lossless
    case wav  // Linear PCM
    case flac // FLAC

    public static var supportedFormats: [String] {
        return SCKOutputFormat.allCases.map(\.fileExtension)
    }

    public var audioFormatID: AudioFormatID {
        switch self {
        case .aac: kAudioFormatMPEG4AAC
        case .m4a: kAudioFormatAppleLossless
        case .wav: kAudioFormatLinearPCM
        case .flac: kAudioFormatFLAC
        }
    }

    public var fileExtension: String {
        switch self {
        case .aac: "m4a"
        case .m4a: "m4a"
        case .wav: "wav"
        case .flac: "flac"
        }
    }
}

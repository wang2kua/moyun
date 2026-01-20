import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  FlutterTts? _tts;
  bool _isPlaying = false;
  bool _initialized = false;
  void Function()? _onComplete;

  bool get isPlaying => _isPlaying;

  Future<void> init() async {
    try {
      _tts = FlutterTts();
      
      if (kIsWeb) {
        // Web 平台特殊处理
        await _tts!.setLanguage('zh-CN');
        await _tts!.setSpeechRate(0.8); // Web 上语速参数不同
        await _tts!.setVolume(1.0);
      } else {
        await _tts!.setLanguage('zh-CN');
        await _tts!.setSpeechRate(0.4);
        await _tts!.setVolume(1.0);
        await _tts!.awaitSpeakCompletion(true);
      }
      
      _tts!.setCompletionHandler(() {
        _isPlaying = false;
        _onComplete?.call();
      });
      _tts!.setErrorHandler((msg) {
        _isPlaying = false;
        _onComplete?.call();
      });
      _initialized = true;
    } catch (e) {
      _initialized = false;
    }
  }

  Future<void> speak(String text, {void Function()? onComplete}) async {
    if (!_initialized || _tts == null) {
      onComplete?.call();
      return;
    }
    try {
      _isPlaying = true;
      _onComplete = onComplete;
      var result = await _tts!.speak(text);
      if (result != 1) {
        _isPlaying = false;
        onComplete?.call();
      }
    } catch (e) {
      _isPlaying = false;
      onComplete?.call();
    }
  }

  Future<void> stop() async {
    if (!_initialized || _tts == null) return;
    try {
      _isPlaying = false;
      _onComplete = null;
      await _tts!.stop();
    } catch (_) {}
  }
}

final ttsService = TtsService();

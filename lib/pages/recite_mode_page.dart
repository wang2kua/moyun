import 'package:flutter/material.dart';
import '../models/poem.dart';
import '../services/progress_service.dart';

class ReciteModePage extends StatefulWidget {
  final Poem poem;
  const ReciteModePage({super.key, required this.poem});

  @override
  State<ReciteModePage> createState() => _ReciteModePageState();
}

class _ReciteModePageState extends State<ReciteModePage> {
  late List<String> _lines;
  int _revealedCount = 0;
  bool _showAll = false;
  int _mode = 0;

  @override
  void initState() {
    super.initState();
    _lines = widget.poem.content.split('\n').where((l) => l.trim().isNotEmpty).toList();
  }

  void _reset() => setState(() {
    _revealedCount = 0;
    _showAll = false;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('背诵：${widget.poem.title}'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _reset),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('逐句显示')),
                ButtonSegment(value: 1, label: Text('填空模式')),
              ],
              selected: {_mode},
              onSelectionChanged: (v) => setState(() { _mode = v.first; _reset(); }),
            ),
          ),
          Expanded(child: _mode == 0 ? _buildLineByLine(context) : _buildFillBlank(context)),
        ],
      ),
    );
  }

  Widget _buildLineByLine(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: _lines.length,
            itemBuilder: (_, i) {
              final show = _showAll || i < _revealedCount;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  show ? _lines[i] : '？？？？？？',
                  style: TextStyle(
                    fontSize: 22,
                    height: 1.8,
                    color: show ? null : (isDark ? Colors.grey[700] : Colors.grey[300]),
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _revealedCount < _lines.length ? () => setState(() => _revealedCount++) : null,
                icon: const Icon(Icons.visibility),
                label: Text('显示下一句 (${_revealedCount}/${_lines.length})'),
              ),
              TextButton(
                onPressed: () => setState(() => _showAll = true),
                child: const Text('显示全部'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFillBlank(BuildContext context) {
    return _FillBlankWidget(lines: _lines);
  }
}

class _FillBlankWidget extends StatefulWidget {
  final List<String> lines;
  const _FillBlankWidget({required this.lines});

  @override
  State<_FillBlankWidget> createState() => _FillBlankWidgetState();
}

class _FillBlankWidgetState extends State<_FillBlankWidget> {
  late List<bool> _revealed;
  late List<int> _blankIndices;

  @override
  void initState() {
    super.initState();
    _revealed = List.filled(widget.lines.length, false);
    final indices = List.generate(widget.lines.length, (i) => i)..shuffle();
    _blankIndices = indices.take((widget.lines.length / 2).ceil()).toList()..sort();
    for (var i in _blankIndices) {
      _revealed[i] = false;
    }
    for (var i = 0; i < widget.lines.length; i++) {
      if (!_blankIndices.contains(i)) _revealed[i] = true;
    }
  }

  int get _remaining => _blankIndices.where((i) => !_revealed[i]).length;

  void _checkCompletion() {
    if (_remaining == 0) {
      progressService.markRecitedToday();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: widget.lines.length,
            itemBuilder: (_, i) {
              final isBlank = _blankIndices.contains(i);
              final show = _revealed[i];
              return GestureDetector(
                onTap: isBlank && !show ? () {
                  setState(() => _revealed[i] = true);
                  _checkCompletion();
                } : null,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isBlank 
                        ? (show 
                            ? (isDark ? Colors.green[900] : Colors.green[50]) 
                            : (isDark ? Colors.orange[900] : Colors.orange[50])) 
                        : null,
                    borderRadius: BorderRadius.circular(8),
                    border: isBlank ? Border.all(color: show ? Colors.green : Colors.orange) : null,
                  ),
                  child: Text(
                    show ? widget.lines[i] : '点击显示答案',
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.6,
                      color: show ? null : Colors.orange,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            _remaining > 0 ? '还有 $_remaining 处空白，点击填空处查看答案' : '🎉 完成！',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}

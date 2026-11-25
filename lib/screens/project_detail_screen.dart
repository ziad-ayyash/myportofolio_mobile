import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myportofolio_mobile/models/project.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({super.key, required this.project});

  final Project project;

  Future<void> _copyLink(BuildContext context, String link) async {
    await Clipboard.setData(ClipboardData(text: link));
    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Link copied to clipboard.')));
  }

  Widget _buildThumbnail(BuildContext context) {
    final url = project.thumbnail;
    final colors = Theme.of(context).colorScheme;

    Widget placeholder(IconData icon) => Container(
      color: colors.surfaceContainerHighest,
      alignment: Alignment.center,
      child: Icon(icon, size: 64, color: colors.onSurfaceVariant),
    );

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: (url == null || url.isEmpty)
          ? placeholder(Icons.folder_open)
          : Image.network(
              url,
              fit: BoxFit.cover,
              width: double.infinity,
              loadingBuilder: (context, child, progress) => progress == null
                  ? child
                  : const Center(child: CircularProgressIndicator()),
              errorBuilder: (_, __, ___) => placeholder(Icons.broken_image),
            ),
    );
  }

  Widget _sectionLabel(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final link = project.link;
    final hasLink = link.trim().isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: Text(project.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildThumbnail(context),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    project.type,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Status chips
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Chip(
                        avatar: const Icon(Icons.code, size: 18),
                        label: Text('Dev: ${project.developmentStatus}'),
                      ),
                      Chip(
                        avatar: const Icon(Icons.build_outlined, size: 18),
                        label: Text(
                          'Maintenance: ${project.maintenanceStatus}',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Description
                  _sectionLabel(context, 'Description'),
                  Text(project.description, style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 24),

                  // Link
                  _sectionLabel(context, 'Link'),
                  SelectableText(
                    hasLink ? link : 'No link available.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: hasLink
                          ? theme.colorScheme.onSurface
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                  ),

                  // ID
                  if (project.id != null) ...[
                    const SizedBox(height: 24),
                    Text(
                      'Project ID: ${project.id}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

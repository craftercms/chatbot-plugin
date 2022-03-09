# Quiq Plugin for CrafterCMS

This is a plugin to add Quiq to your site.

# Installation

The plugin can be installed to your site from the CrafterCMS Marketplace

# Setup

The following parameters can be provided during the plugin installation:

- `enabled`: Indicates if the Quiq plugin should be added to all pages, defaults to `false` in preview
- `tenant`: Name of your Quiq tenant
- `contactPoint`: Name of your Quiq contact point, defaults to `default`

After installation the configuration can be updated from the Plugin Management section in Crafter Studio

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Quiq markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name        |
|------------|--------------------|
| `checkbox` | `disableQuiq_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

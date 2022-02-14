# LiveAgent Plugin for CrafterCMS

This is a plugin to add LiveAgent to your site.

# Installation

The plugin can be installed to your site from the CrafterCMS Marketplace

# Setup

The following parameters can be provided during the plugin installation:

- `enabled`: Indicates if the LiveAgent plugin should be added to all pages, defaults to `false` in preview
- `id`: The id of LiveAgent
- `companyName`: The name of the company in LiveAgent
- `buttonId`: The id of the button to add

After installation the configuration can be updated from the Plugin Management section in Crafter Studio

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the LiveAgent markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name          |
|------------|----------------------|
| `checkbox` | `disableLiveAgent_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

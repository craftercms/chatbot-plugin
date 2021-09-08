# Freshdesk Plugin for Crafter CMS

This is a plugin to add Freshdesk to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your site configuration:

```xml
<plugins>
  <freshdesk>
    <enabled>...</enabled>
    <token>...</token>
  </freshdesk>
</plugins>
```

# Configuration

- `enabled`: Indicates if the Freshdesk plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise
- `token`: The Freshdesk token

Example:

```xml
<plugins>
  <freshdesk>
    <token>XXXXXX</token>
  </freshdesk>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Freshdesk markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name          |
|------------|----------------------|
| `checkbox` | `disableFreshdesk_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

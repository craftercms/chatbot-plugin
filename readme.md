# Quiq Plugin for Crafter CMS

This is a plugin to add Quiq to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your
`Engine Site Configuration` file:

```xml
<plugins>
  <quiq>
    <enabled>...</enabled>
    <tenant>...</tenant>
    <contactPoint>...</contactPoint>
  </quiq>
</plugins>
```

# Configuration

- `enabled`: Indicates if the Quiq plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise
- `tenant`: Name of your Quiq tenant
- `contactPoint`: Name of your Quiq contact point, defaults to `default`

Every provider can support different settings:

Example:

```xml
<plugins>
  <quiq>
    <tenant>XXXX</tenant>
  </quiq>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Quiq markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name        |
|------------|--------------------|
| `checkbox` | `disableQuiq_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

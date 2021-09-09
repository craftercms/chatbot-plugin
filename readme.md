# Userlike Plugin for Crafter CMS

This is a plugin to add Userlike to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your site configuration:

```xml
<plugins>
  <userlike>
    <enabled>...</enabled>
    <widgetKey>...</widgetKey>
  </userlike>
</plugins>
```

# Configuration

- `enabled`: Indicates if the Userlike plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise
- `widgetKey`: The Userlike widget key

Example:

```xml
<plugins>
  <userlike>
    <widgetKey>XXXX</widgetKey>
  </userlike>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Userlike markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name         |
|------------|---------------------|
| `checkbox` | `disableUserlike_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

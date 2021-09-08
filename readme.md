# Olark Plugin for Crafter CMS

This is a plugin to add Olark to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your site configuration:

```xml
<plugins>
  <olark>
    <enabled>...</enabled>
    <id>...</id>
  </olark>
</plugins>
```

# Configuration

- `enabled`: Indicates if the Olark plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise
- `id`: The Olark ID

Example:

```xml
<plugins>
  <olark>
    <id>XXXX</id>
  </olark>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Olark markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name        |
|------------|--------------------|
| `checkbox` | `disableOlark_b`   |

When the property is added to a content-type authors can use it do control which pages are excluded.

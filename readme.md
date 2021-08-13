# Tidio Plugin for Crafter CMS

This is a plugin to add Tidio to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your
`Engine Site Configuration` file:

```xml
<plugins>
  <tidio>
    <enabled>...</enabled>
    <id>XXXX</id>
  </tidio>
</plugins>
```

# Configuration

- `enabled`: Indicates if the Tidio plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise
- `id`: The Tidio filename for the chatbot without the extension

Example:

```xml
<plugins>
  <tidio>
    <id>XXXX</id>
  </tidio>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Tidio markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name        |
|------------|--------------------|
| `checkbox` | `disableTidio_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

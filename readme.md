# Collect.chat Plugin for Crafter CMS

This is a plugin to add Collect.chat to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your
`Engine Site Configuration` file:

```xml
<plugins>
  <collectChat>
    <enabled>...</enabled>
    <id>XXXX</id>
  </collectChat>
</plugins>
```

# Configuration

- `enabled`: Indicates if the Collect.chat plugin should be added to all pages, defaults to `false` if the site is
  running in preview mode, `true` otherwise
- `id`: The CollectId for the chatbot

Example:

```xml
<plugins>
  <collectChat>
    <id>XXXX</id>
  </collectChat>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Collect.chat markup it is
possible to override the configuration using a field in the content-type:

| Field Type |  Field Name        |
|------------|--------------------|
| `checkbox` | `disableCollectChat_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

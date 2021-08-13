# Cliengo Plugin for Crafter CMS

This is a plugin to add Cliengo to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your
`Engine Site Configuration` file:

```xml
<plugins>
  <cliengo>
    <enabled>...</enabled>
    <token>XXXX-XXXX</token>
  </cliengo>
</plugins>
```

# Configuration

- `enabled`: Indicates if the chatbot plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise
- `token`: The token for the Cliengo chatbot

Example:

```xml
<plugins>
  <chatbot>
    <token>XXXX-XXXX</token>
  </analyics>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the Cliengo markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name        |
|------------|--------------------|
| `checkbox` | `disableCliengo_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

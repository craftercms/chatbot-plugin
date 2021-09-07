# LiveAgent Plugin for Crafter CMS

This is a plugin to add LiveAgent to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your site configuration:

```xml
<plugins>
  <liveAgent>
    <enabled>...</enabled>
    <id>...</id>
    <companyName>...</companyName>
    <buttonId>...</buttonId>
  </liveAgent>
</plugins>
```

# Configuration

- `enabled`: Indicates if the LiveAgent plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise
- `id`: The id of LiveAgent
- `companyName`: The name of the company in LiveAgent
- `buttonId`: The id of the button to add

Example:

```xml
<plugins>
  <liveAgent>
      <id>XXXX</id>
      <companyName>ZZZZZ</companyName>
      <buttonId>NNNN</buttonId>
  </liveAgent>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the LiveAgent markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name          |
|------------|----------------------|
| `checkbox` | `disableLiveAgent_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

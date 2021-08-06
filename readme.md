# Chatbot Plugin for Crafter CMS

This is a plugin to add a chatbot to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can enable it by adding the following snippet in your site configuration:

```xml
<plugins>
  <chatbot>
    <enabled>...</enabled>
    <provider>...</provider>
    <settings>
      ...
    </settings>
  </chatbot>
</plugins>
```

# Configuration

- `enabled`: Indicates if the chatbot plugin should be added to all pages, defaults to `false` if the site is running
  in preview mode, `true` otherwise

Every provider can support different settings:

## Collect.chat

The `provider` value must be set to `collectChat`

- `id`: The CollectId for the chatbot

Example:

```xml
<plugins>
  <chatbot>
    <provider>collectChat</provider>
    <settings>
      <id>XXXX</id>
    </settings>
  </analyics>
</plugins>
```

## Cliengo

The `provider` value must be set to `cliengo`

- `token`: The token for the chatbot

Example:

```xml
<plugins>
  <chatbot>
    <provider></provider>
    <settings>
      <token>XXXX-XXXX</tpken>
    </settings>
  </analyics>
</plugins>
```

## Tidio

The `provider` value must be set to `tidio`

- `id`: The filename for the chatbot without the extension

Example:

```xml
<plugins>
  <chatbot>
    <provider>tidio</provider>
    <settings>
      <id>XXXX</id>
    </settings>
  </analyics>
</plugins>
```

# Page Override

If the plugin is enabled in the site configuration but some pages should not include the chatbot markup it is possible
to override the configuration using a field in the content-type:

| Field Type |  Field Name        |
|------------|--------------------|
| `checkbox` | `disableChatbot_b` |

When the property is added to a content-type authors can use it do control which pages are excluded.

# Extending

Adding a new chatbot provider is very simple:

## Add the new templates

Create all the required templates following the naming convention: `delivery/templates/{provider}/*`. The plugin will
automatically include the following templates:

| Name              | Description                                                             |
|-------------------|-------------------------------------------------------------------------|
| `definitions.ftl` | Can be used to define macros that will be available for other templates |
| `head.ftl`        | Can be used to inject markup in the head element                        |
| `body_top.ftl`    | Can be used to inject markup at the top of the body element             |
| `body_bottom.ftl` | Can be used to inject markup at the bottom of the body element          |

Example:

Assuming you are integrating a new service called `Custom Chatbot`, you can create a template in the path
`delivery/templates/customChatbot/head.ftl`:

```ftl
<#-- Get any required configuration -->
<#assign customKey = siteConfig.getString('plugins.chatbot.settings.customKey')
<#assign customProp = siteConfig.getFloat('plugins.chatbot.settings.customProp', 5)

<#-- Add the markup required by the service -->
<script src="https://www.customchatbot.com/script.js">
<script>
  customChatbot.init('${customKey}', ${customProp})
</script>
```

Then it can be setup for the site like this:

```xml
<plugins>
  <chatbot>
    <provider>customChatbot</provider>
    <settings>
      <customKey>XXXX</customKey>
      <customProp>42</customProp>
    </settings>
  </chatbot>
</plugins>
```

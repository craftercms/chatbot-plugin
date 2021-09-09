<#--
  ~ MIT License
  ~
  ~ Copyright (c) 2018-2021 Crafter Software Corporation. All Rights Reserved.
  ~
  ~ Permission is hereby granted, free of charge, to any person obtaining a copy
  ~ of this software and associated documentation files (the "Software"), to deal
  ~ in the Software without restriction, including without limitation the rights
  ~ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  ~ copies of the Software, and to permit persons to whom the Software is
  ~ furnished to do so, subject to the following conditions:
  ~
  ~ The above copyright notice and this permission notice shall be included in all
  ~ copies or substantial portions of the Software.
  ~
  ~ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  ~ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  ~ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  ~ AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  ~ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  ~ OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  ~ SOFTWARE.
  -->
<#-- Check if the plugin is enabled -->
<#if siteConfig.getBoolean('plugins.userlike.enabled', !modePreview)>
  <#-- Check if the current item has the override property -->
  <#if (!(contentModel.disableUserlike_b)!false) >
    <#assign widgetKey = siteConfig.getString('plugins.userlike.widgetKey', '') />
    <#if widgetKey?has_content>
      <script type="text/javascript" async src="https://userlike-cdn-widgets.s3-eu-west-1.amazonaws.com/${widgetKey}.js"></script>
    <#else>
      <div>The Userlike plugin is not properly configured, please follow the
      <a target="_blank" href="https://github.com/craftercms/chatbot-plugin/tree/userlike#setup">instructions</a>.</div>
    </#if>
  </#if>
</#if>

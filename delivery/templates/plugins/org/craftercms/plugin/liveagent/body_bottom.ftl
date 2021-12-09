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
<#if pluginConfig.getBoolean('enabled', !modePreview)>
  <#-- Check if the current item has the override property -->
  <#if (!(contentModel.disableLiveAgent_b)!false) >
    <#assign id = pluginConfig.getString('id', '') />
    <#assign company = pluginConfig.getString('companyName', '') />
    <#assign button = pluginConfig.getString('buttonId', '') />
    <#if id?has_content && company?has_content>
      <script type="text/javascript">
  (function(d, src, c) { var t=d.scripts[d.scripts.length - 1],s=d.createElement('script');s.id='${id}';s.async=true;s.src=src;s.onload=s.onreadystatechange=function(){var rs=this.readyState;if(rs&&(rs!='complete')&&(rs!='loaded')){return;}c(this);};t.parentElement.insertBefore(s,t.nextSibling);})(document,
  'https://${company}.ladesk.com/scripts/track.js',
  function(e){ <#if button?has_content>LiveAgent.createButton('${button}', e);</#if> });
  </script>
    <#else>
      <div>The LiveAgent plugin is not properly configured, please follow the
      <a target="_blank" href="https://github.com/craftercms/googlemaps-plugin#setup">instructions</a>.</div>
    </#if>
  </#if>
</#if>

<#--
  ~ MIT License
  ~
  ~ Copyright (c) 2018-2022 Crafter Software Corporation. All Rights Reserved.
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
  <#if (!(contentModel.disableLiveChat_b)!false) >
  <#assign license = pluginConfig.getString('license') />
  <!-- Start of LiveChat (www.livechat.com) code -->
  <script>
  window.__lc = window.__lc || {};
  window.__lc.license = ${license};
  ;(function(n,t,c){function i(n){return e._h?e._h.apply(null,n):e._q.push(n)}var e={_q:[],_h:null,_v:"2.0",on:function(){i(["on",c.call(arguments)])},once:function(){i(["once",c.call(arguments)])},off:function(){i(["off",c.call(arguments)])},get:function(){if(!e._h)throw new Error("[LiveChatWidget] You can't use getters before load.");return i(["get",c.call(arguments)])},call:function(){i(["call",c.call(arguments)])},init:function(){var n=t.createElement("script");n.async=!0,n.type="text/javascript",n.src="https://cdn.livechatinc.com/tracking.js",t.head.appendChild(n)}};!n.__lc.asyncInit&&e.init(),n.LiveChatWidget=n.LiveChatWidget||e}(window,document,[].slice))
  </script>
  <noscript
  ><a href="https://www.livechat.com/chat-with/${license}/" rel="nofollow"
    >Chat with us</a
  >, powered by
  <a
    href="https://www.livechat.com/?welcome"
    rel="noopener nofollow"
    target="_blank"
    >LiveChat</a
  ></noscript
  >
  <!-- End of LiveChat code -->
  </#if>
</#if>

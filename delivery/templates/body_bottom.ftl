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
<#if siteConfig.getBoolean('plugins.olark.enabled', !modePreview)>
  <#-- Check if the current item has the override property -->
  <#if (!(contentModel.disableOlark_b)!false) >
    <#assign id = siteConfig.getString('plugins.olark.id', '') />
    <#if id?has_content>
      <!-- begin olark code -->
      <script type="text/javascript" async>
       ;(function(o,l,a,r,k,y){if(o.olark)return;
       r="script";y=l.createElement(r);r=l.getElementsByTagName(r)[0];
       y.async=1;y.src="//"+a;r.parentNode.insertBefore(y,r);
       y=o.olark=function(){k.s.push(arguments);k.t.push(+new Date)};
       y.extend=function(i,j){y("extend",i,j)};
       y.identify=function(i){y("identify",k.i=i)};
       y.configure=function(i,j){y("configure",i,j);k.c[i]=j};
       k=y._={s:[],t:[+new Date],c:{},l:a};
       })(window,document,"static.olark.com/jsclient/loader.js");
       /* Add configuration calls below this comment */
       olark.identify('${id}');</script>
      <!-- end olark code -->
    <#else>
      <div>The Olark plugin is not properly configured, please follow the
      <a target="_blank" href="https://github.com/craftercms/chatbot-plugin/tree/olark#setup">instructions</a>.</div>
    </#if>
  </#if>
</#if>

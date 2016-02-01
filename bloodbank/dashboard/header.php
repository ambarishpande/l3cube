<!DOCTYPE html>
<!--
    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
     KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
-->
<html>
    <head>
        <!--
        Customize this policy to fit your own app's needs. For more guidance, see:
            https://github.com/apache/cordova-plugin-whitelist/blob/master/README.md#content-security-policy
        Some notes:
            * gap: is required only on iOS (when using UIWebView) and is needed for JS->native communication
            * https://ssl.gstatic.com is required only on Android and is needed for TalkBack to function properly
            * Disables use of inline scripts in order to mitigate risk of XSS vulnerabilities. To change this:
                * Enable inline JS: add 'unsafe-inline' to default-src
        -->
        <!-- <meta http-equiv="Content-Security-Policy" content="default-src 'self' data: gap: https://ssl.gstatic.com 'unsafe-eval'; style-src 'self' 'unsafe-inline'; media-src *"> -->
        <meta name="format-detection" content="telephone=no">
        <meta name="msapplication-tap-highlight" content="no">
        <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../bower_components/materialize/dist/css/materialize.min.css">
        <style type="text/css">
            main,header{
                padding-left: 300px;
            }

            @media only screen and (max-width: 992px){
                main,header{
                    padding-left: 0;
                }

            }
        </style>
        <link rel="stylesheet" type="text/css" href="../css/index.css">
        <title>Dashboard</title>
    </head>
    <body >  
  <header>
  <nav style="padding-left:10px;padding-right:10px;">  
    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>   
    <a style="font-size:1.6rem;" class="title">Dashboard</a> 
    <a class="waves-effect right" style="padding" href="">Logout</a>
  </nav>
        
      <ul class="side-nav fixed" id="mobile-demo">
        <li><a href="#dashboard">Dashboard</a></li>
        <li class="no-padding">
          <ul class="collapsible collapsible-accordion">
            <li class="bold"><a class="collapsible-header  waves-effect waves-teal">Donors</a>
              <div class="collapsible-body" style="">
                <ul>
                  <li><a href="pages/addnewdonor.html">Add New Donor</a></li>
                  <li><a href="pages/donorlist.html">Donor List</a></li>
                </ul>
              </div>
            </li>
          </ul>
        </li>
      </ul>
    

  </header>
  <main>
    <div id="app" class="container">
        
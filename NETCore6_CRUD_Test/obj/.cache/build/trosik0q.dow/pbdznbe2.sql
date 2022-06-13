<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Class AuthController
   </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Class AuthController
   ">
    <meta name="generator" content="docfx 2.59.2.0">
    
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" href="../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../styles/docfx.css">
    <link rel="stylesheet" href="../styles/main.css">
    <meta property="docfx:navrel" content="../toc.html">
    <meta property="docfx:tocrel" content="toc.html">
    
    
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              
              <a class="navbar-brand" href="../index.html">
                <img id="logo" class="svg" src="../logo.svg" alt="">
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="NETCore6_CRUD_Test.Controllers.AuthController">
  
  
  <h1 id="NETCore6_CRUD_Test_Controllers_AuthController" data-uid="NETCore6_CRUD_Test.Controllers.AuthController" class="text-break">Class AuthController
  </h1>
  <div class="markdown level0 summary"></div>
  <div class="markdown level0 conceptual"></div>
  <div class="inheritance">
    <h5>Inheritance</h5>
    <div class="level0"><span class="xref">System.Object</span></div>
    <div class="level1"><span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase</span></div>
    <div class="level2"><span class="xref">AuthController</span></div>
  </div>
  <div class="inheritedMembers">
    <h5>Inherited Members</h5>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.StatusCode(System.Int32)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.StatusCode(System.Int32, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Content(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Content(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Content(System.String, System.String, System.Text.Encoding)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Content(System.String, Microsoft.Net.Http.Headers.MediaTypeHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.NoContent()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Ok()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Ok(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Redirect(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectPermanent(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectPreserveMethod(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectPermanentPreserveMethod(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.LocalRedirect(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.LocalRedirectPermanent(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.LocalRedirectPreserveMethod(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.LocalRedirectPermanentPreserveMethod(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToAction()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToAction(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToAction(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToAction(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToAction(System.String, System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToAction(System.String, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToAction(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPreserveMethod(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPermanent(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPermanent(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPermanent(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPermanent(System.String, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPermanent(System.String, System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPermanent(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToActionPermanentPreserveMethod(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoute(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoute(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoute(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoute(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoute(System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoutePreserveMethod(System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoutePermanent(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoutePermanent(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoutePermanent(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoutePermanent(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoutePermanent(System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToRoutePermanentPreserveMethod(System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPage(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPage(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPage(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPage(System.String, System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPage(System.String, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPage(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPagePermanent(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPagePermanent(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPagePermanent(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPagePermanent(System.String, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPagePermanent(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPagePreserveMethod(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RedirectToPagePermanentPreserveMethod(System.String, System.String, System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String, System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.Byte[], System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String, System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.IO.Stream, System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String, System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.File(System.String, System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String, System.String, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.PhysicalFile(System.String, System.String, System.String, System.Nullable&lt;System.DateTimeOffset&gt;, Microsoft.Net.Http.Headers.EntityTagHeaderValue, System.Boolean)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Unauthorized()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Unauthorized(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.NotFound()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.NotFound(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.BadRequest()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.BadRequest(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.BadRequest(Microsoft.AspNetCore.Mvc.ModelBinding.ModelStateDictionary)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.UnprocessableEntity()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.UnprocessableEntity(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.UnprocessableEntity(Microsoft.AspNetCore.Mvc.ModelBinding.ModelStateDictionary)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Conflict()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Conflict(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Conflict(Microsoft.AspNetCore.Mvc.ModelBinding.ModelStateDictionary)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Problem(System.String, System.String, System.Nullable&lt;System.Int32&gt;, System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ValidationProblem(Microsoft.AspNetCore.Mvc.ValidationProblemDetails)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ValidationProblem(Microsoft.AspNetCore.Mvc.ModelBinding.ModelStateDictionary)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ValidationProblem()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ValidationProblem(System.String, System.String, System.Nullable&lt;System.Int32&gt;, System.String, System.String, Microsoft.AspNetCore.Mvc.ModelBinding.ModelStateDictionary)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Created(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Created(System.Uri, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.CreatedAtAction(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.CreatedAtAction(System.String, System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.CreatedAtAction(System.String, System.String, System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.CreatedAtRoute(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.CreatedAtRoute(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.CreatedAtRoute(System.String, System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Accepted()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Accepted(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Accepted(System.Uri)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Accepted(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Accepted(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Accepted(System.Uri, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtAction(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtAction(System.String, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtAction(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtAction(System.String, System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtAction(System.String, System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtAction(System.String, System.String, System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtRoute(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtRoute(System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtRoute(System.String, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtRoute(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.AcceptedAtRoute(System.String, System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Challenge()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Challenge(System.String[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Challenge(Microsoft.AspNetCore.Authentication.AuthenticationProperties)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Challenge(Microsoft.AspNetCore.Authentication.AuthenticationProperties, System.String[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Forbid()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Forbid(System.String[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Forbid(Microsoft.AspNetCore.Authentication.AuthenticationProperties)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Forbid(Microsoft.AspNetCore.Authentication.AuthenticationProperties, System.String[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignIn(System.Security.Claims.ClaimsPrincipal)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignIn(System.Security.Claims.ClaimsPrincipal, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignIn(System.Security.Claims.ClaimsPrincipal, Microsoft.AspNetCore.Authentication.AuthenticationProperties)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignIn(System.Security.Claims.ClaimsPrincipal, Microsoft.AspNetCore.Authentication.AuthenticationProperties, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignOut()</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignOut(Microsoft.AspNetCore.Authentication.AuthenticationProperties)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignOut(System.String[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.SignOut(Microsoft.AspNetCore.Authentication.AuthenticationProperties, System.String[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync&lt;TModel&gt;(TModel)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync&lt;TModel&gt;(TModel, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync&lt;TModel&gt;(TModel, System.String, Microsoft.AspNetCore.Mvc.ModelBinding.IValueProvider)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync&lt;TModel&gt;(TModel, System.String, System.Linq.Expressions.Expression&lt;System.Func&lt;TModel, System.Object&gt;&gt;[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync&lt;TModel&gt;(TModel, System.String, System.Func&lt;Microsoft.AspNetCore.Mvc.ModelBinding.ModelMetadata, System.Boolean&gt;)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync&lt;TModel&gt;(TModel, System.String, Microsoft.AspNetCore.Mvc.ModelBinding.IValueProvider, System.Linq.Expressions.Expression&lt;System.Func&lt;TModel, System.Object&gt;&gt;[])</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync&lt;TModel&gt;(TModel, System.String, Microsoft.AspNetCore.Mvc.ModelBinding.IValueProvider, System.Func&lt;Microsoft.AspNetCore.Mvc.ModelBinding.ModelMetadata, System.Boolean&gt;)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync(System.Object, System.Type, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryUpdateModelAsync(System.Object, System.Type, System.String, Microsoft.AspNetCore.Mvc.ModelBinding.IValueProvider, System.Func&lt;Microsoft.AspNetCore.Mvc.ModelBinding.ModelMetadata, System.Boolean&gt;)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryValidateModel(System.Object)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.TryValidateModel(System.Object, System.String)</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.HttpContext</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Request</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Response</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.RouteData</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ModelState</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ControllerContext</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.MetadataProvider</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ModelBinderFactory</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.Url</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ObjectValidator</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.ProblemDetailsFactory</span>
    </div>
    <div>
      <span class="xref">Microsoft.AspNetCore.Mvc.ControllerBase.User</span>
    </div>
    <div>
      <span class="xref">System.Object.Equals(System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.Equals(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.GetHashCode()</span>
    </div>
    <div>
      <span class="xref">System.Object.GetType()</span>
    </div>
    <div>
      <span class="xref">System.Object.MemberwiseClone()</span>
    </div>
    <div>
      <span class="xref">System.Object.ReferenceEquals(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.ToString()</span>
    </div>
  </div>
  <h6><strong>Namespace</strong>: <a class="xref" href="NETCore6_CRUD_Test.Controllers.html">NETCore6_CRUD_Test.Controllers</a></h6>
  <h6><strong>Assembly</strong>: NETCore6_CRUD_Test.dll</h6>
  <h5 id="NETCore6_CRUD_Test_Controllers_AuthController_syntax">Syntax</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">[Route(&quot;api/[controller]&quot;)]
[ApiController]
public class AuthController : ControllerBase</code></pre>
  </div>
  <h3 id="constructors">Constructors
  </h3>
  
  
  <a id="NETCore6_CRUD_Test_Controllers_AuthController__ctor_" data-uid="NETCore6_CRUD_Test.Controllers.AuthController.#ctor*"></a>
  <h4 id="NETCore6_CRUD_Test_Controllers_AuthController__ctor" data-uid="NETCore6_CRUD_Test.Controllers.AuthController.#ctor">AuthController()</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public AuthController()</code></pre>
  </div>
  <h3 id="methods">Methods
  </h3>
  
  
  <a id="NETCore6_CRUD_Test_Controllers_AuthController_Login_" data-uid="NETCore6_CRUD_Test.Controllers.AuthController.Login*"></a>
  <h4 id="NETCore6_CRUD_Test_Controllers_AuthController_Login_NETCore6_CRUD_Test_ClientAddUserData_" data-uid="NETCore6_CRUD_Test.Controllers.AuthController.Login(NETCore6_CRUD_Test.ClientAddUserData)">Login(ClientAddUserData)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">[HttpPost(&quot;login&quot;)]
public async Task&lt;ActionResult&lt;ClientAddUserData&gt;&gt; Login(ClientAddUserData request)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="NETCore6_CRUD_Test.ClientAddUserData.html">ClientAddUserData</a></td>
        <td><span class="parametername">request</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">Task</span>&lt;<span class="xref">Microsoft.AspNetCore.Mvc.ActionResult</span>&lt;<a class="xref" href="NETCore6_CRUD_Test.ClientAddUserData.html">ClientAddUserData</a>&gt;&gt;</td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="NETCore6_CRUD_Test_Controllers_AuthController_VerifyUser_" data-uid="NETCore6_CRUD_Test.Controllers.AuthController.VerifyUser*"></a>
  <h4 id="NETCore6_CRUD_Test_Controllers_AuthController_VerifyUser_System_String_" data-uid="NETCore6_CRUD_Test.Controllers.AuthController.VerifyUser(System.String)">VerifyUser(String)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">[HttpPost(&quot;VerifyUser&quot;)]
public async Task&lt;IActionResult&gt; VerifyUser(string Token)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">Token</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">Task</span>&lt;<span class="xref">Microsoft.AspNetCore.Mvc.IActionResult</span>&gt;</td>
        <td></td>
      </tr>
    </tbody>
  </table>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
                <h5>In This Article</h5>
                <div></div>
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
          <div class="container">
            <span class="pull-right">
              <a href="#top">Back to top</a>
            </span>
            
            <span>Generated by <strong>DocFX</strong></span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../styles/docfx.js"></script>
    <script type="text/javascript" src="../styles/main.js"></script>
  </body>
</html>

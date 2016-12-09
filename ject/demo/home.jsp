<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en" data-scribe-reduced-action-queue="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <spring:url value="/resources/tientx" var="tientx" />
        <spring:url value="/resources/image/thumb" var="image" />
        <spring:url value="/resources/tientx/analytics.js" var="analytics" />
        <spring:url value="/resources/core/js/script.js" var="script" />
        <spring:url value="/resources/core/js/jquery-2.2.4.min.js" var="jquery" />
        <spring:url value="/resources/core/css/style.css" var="style" />
        <spring:url value="/resources/tientx/twitter_core.bundle.css" var="twitter_core_bundle" />
        <spring:url value="/resources/tientx/twitter_more_1.bundle.css" var="twitter_more_1_bundle" />
        <spring:url value="/resources/tientx/twitter_more_2.bundle.css" var="twitter_more_2_bundle" />
        <script async="" src="${jquery}" type="text/javascript"></script>
        <script async="" src="${analytics}" type="text/javascript"></script>
        <link rel="stylesheet" href="${twitter_core_bundle}">
        <link rel="stylesheet" href="${twitter_more_1_bundle}">
        <link rel="stylesheet" href="${twitter_more_2_bundle}">
        <link rel="stylesheet" href="${style}">
        <title>Twitter - ${currentUser.account}</title>
        <link rel="shortcut icon" href="${tientx}/favicon.ico" type="image/x-icon">
        <style id="user-style-z0zdarkz0z-header-img" class="js-user-style-header-img">

            body.user-style-z0zdarkz0z .enhanced-mini-profile .mini-profile .profile-summary {
                background-image: url(https://pbs.twimg.com/profile_banners/988209746/1354604668/web);
            }

            body.user-style-z0zdarkz0z .wrapper-profile .profile-card.profile-header .profile-header-inner {
                background-image: url(https://pbs.twimg.com/profile_banners/988209746/1354604668/web);
            }

            .DashboardProfileCard-bg {
                background-image: url(https://pbs.twimg.com/profile_banners/988209746/1354604668/600x200);
            }

            body.user-style-z0zdarkz0z .profile-canopy .bg-img {
                background-image: url(https://pbs.twimg.com/profile_banners/988209746/1354604668/web_retina);
            }
        </style>
    </head>
    <body class="three-col logged-in user-style-z0zdarkz0z ms-windows enhanced-mini-profile supports-drag-and-drop">
        <div id="doc" class="route-home">
            <div class="topbar js-topbar">
                <div class="global-nav">
                    <div class="global-nav-inner">
                        <div class="container">
                            <h1 class="Icon Icon--bird bird-topbar-etched" style="display: inline-block; width: 24px; height: 21px;">
                                <span class="visuallyhidden">Twitter</span>
                            </h1>
                            <div role="navigation" style="display: inline-block;">
                                <ul class="nav js-global-actions" id="global-actions">
                                    <li id="global-nav-home" class="home">
                                        <a class="js-nav js-tooltip js-dynamic-tooltip" href="">
                                            <span class="Icon Icon--home Icon--large"></span>
                                            <span class="text">Home</span>
                                        </a>
                                    </li>
                                    <li class="people notifications">
                                        <a class="js-nav js-tooltip js-dynamic-tooltip" href="">
                                            <span class="Icon Icon--notifications Icon--large"></span>
                                            <span class="text">Notifications</span>
                                        </a>
                                    </li>
                                    <li class="dm-nav">
                                        <a role="button" href="" class="js-tooltip js-dynamic-tooltip global-dm-nav">
                                            <span class="Icon Icon--dm Icon--large"></span>
                                            <span class="text">Messages</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="pull-right" style="display: inline-block;">
                                <div role="search">
                                    <form class="t1-form form-search js-search-form" action="" id="global-nav-search">
                                        <label class="visuallyhidden" for="search-query">Search query</label>
                                        <input class="search-input" type="text" id="search-query" placeholder="Search Twitter">
                                        <span class="search-icon js-search-action">
                                            <button type="submit" class="Icon Icon--search nav-search" tabindex="-1">
                                                <span class="visuallyhidden">Search Twitter</span>
                                            </button>
                                        </span>
                                    </form>
                                </div>
                                <ul class="nav right-actions">
                                    <li class="me dropdown session js-session" id="user-dropdown">
                                        <a href="<%=request.getContextPath()%>/logout" class="btn js-tooltip settings dropdown-toggle js-dropdown-toggle" id="user-dropdown-toggle" role="button">
                                            <img class="avatar size32" src="${tientx}/37ce316c5e082735208859499ae45cc6_normal.jpeg" alt="Profile and settings">
                                        </a>
                                    </li>
                                    <li class="topbar-tweet-btn">
                                        <button id="global-new-tweet-button" type="button" class="js-global-new-tweet js-tooltip btn primary-btn tweet-btn js-dynamic-tooltip">
                                            <span class="Icon Icon--tweet Icon--large"></span>
                                            <span class="text">Tweet</span>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="page-outer">
                <div id="page-container" class="AppContent wrapper wrapper-home">
                    <div class="dashboard dashboard-left">
                        <div class="DashboardProfileCard  module">
                            <a class="DashboardProfileCard-bg u-bgUserColor u-block" href="" tabindex="-1" aria-hidden="true">
                            </a>
                            <div class="DashboardProfileCard-content">
                                <a class="DashboardProfileCard-avatarLink u-inlineBlock" href="<%=request.getContextPath()%>/u-${currentUser.account}.html" title="${currentUser.account}" tabindex="-1" aria-hidden="true">
                                    <img class="DashboardProfileCard-avatarImage js-action-profile-avatar" src="${tientx}/37ce316c5e082735208859499ae45cc6_bigger.jpeg" alt="">
                                </a>
                                <div class="DashboardProfileCard-userFields">
                                    <div class="DashboardProfileCard-name u-textTruncate">
                                        <a class="u-textInheritColor" href="<%=request.getContextPath()%>/u-${currentUser.account}.html">${currentUser.account}</a>
                                    </div>
                                    <span class="DashboardProfileCard-screenname u-inlineBlock u-dir" dir="ltr">
                                        <a class="DashboardProfileCard-screennameLink u-linkComplex u-linkClean" href="">@<span class="u-linkComplex-target">${currentUser.account}</span></a>
                                    </span>
                                </div>
                                <div class="ProfileCardStats">
                                    <ul class="ProfileCardStats-statList Arrange Arrange--bottom Arrange--equal">
                                        <li class="ProfileCardStats-stat Arrange-sizeFit">
                                            <a class="ProfileCardStats-statLink u-textUserColor u-linkClean u-block js-nav js-tooltip" title="36 Tweets" href="">
                                                <span class="ProfileCardStats-statLabel u-block">Tweets</span>
                                                <span class="ProfileCardStats-statValue" data-is-compact="false">X</span>
                                            </a>
                                        </li>
                                        <li class="ProfileCardStats-stat Arrange-sizeFit">
                                            <a class="ProfileCardStats-statLink u-textUserColor u-linkClean u-block js-nav js-tooltip" title="16 Following" href="">
                                                <span class="ProfileCardStats-statLabel u-block">Following</span>
                                                <span class="ProfileCardStats-statValue" data-is-compact="false">10</span>
                                            </a>
                                        </li>
                                        <li class="ProfileCardStats-stat Arrange-sizeFit">
                                            <a class="ProfileCardStats-statLink u-textUserColor u-linkClean u-block js-nav js-tooltip" href="">
                                                <span class="ProfileCardStats-statLabel u-block">Followers</span>
                                                <span class="ProfileCardStats-statValue" data-is-compact="false">X</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="Trends module trends">
                            <div class="trends-inner"><div class="flex-module trends-container context-trends-container">
                                    <div class="flex-module-header">
                                        <h3>
                                            <span class="trend-location js-trend-location">Trends</span>
                                        </h3>
                                        <span class="middot">·</span> <a role="button" href="" class="change-trends js-trend-toggle">Change</a>
                                    </div>
                                    <div class="flex-module-inner">
                                        <ul class="trend-items js-trends">
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex" href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#debate</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats">324K Tweets</div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#BLACKPINK</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats">75.5K Tweets</div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#Melon</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats">27.3K Tweets</div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#EXOLSelcaDay</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats"></div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#N7Day</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats"></div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#DudG</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats"></div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#dsmtw</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats">1,635 Tweets</div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#ElectionFinalThoughts</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats">1,274 Tweets</div>
                                                </a>
                                            </li>
                                            <li class="trend-item js-trend-item  context-trend-item">
                                                <a class="pretty-link js-nav js-tooltip u-linkComplex " href="">
                                                    <span class="u-linkComplex-target trend-name" dir="ltr">#WebSummit</span>
                                                    <div class="js-nav trend-item-context"></div>
                                                    <div class="js-nav trend-item-stats"></div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="main" class="content-main top-timeline-tweetbox" id="timeline">
                        <div class="timeline-tweet-box ">
                            <div class="home-tweet-box tweet-box component tweet-user">
                                <img class="top-timeline-tweet-box-user-image avatar size32" src="${tientx}/37ce316c5e082735208859499ae45cc6_normal.jpeg" alt="${currentUser.account}">
                                <form class="t1-form tweet-form condensed" method="post" target="tweet-post-iframe" action="">
                                    <div class="tweet-content">
                                        <img class="inline-reply-user-image avatar size32" src="${tientx}/37ce316c5e082735208859499ae45cc6_normal.jpeg" alt="${currentUser.account}">
                                        <div class="TweetBox-photoIntent">
                                            <div class="photo-selector">
                                                <button aria-hidden="true" class="btn icon-btn js-tooltip" type="button" tabindex="-1">
                                                    <span class="tweet-camera Icon Icon--camera"></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="RichEditor">
                                            <div class="RichEditor-mozillaCursorWorkaround">&nbsp;</div>
                                            <div class="RichEditor-container">
                                                <div class="RichEditor-scrollContainer">
                                                    <div id="tweet-box-home-timeline" class="tweet-box rich-editor" contenteditable="true">
                                                        <div>What's happening?</div>
                                                    </div>
                                                    <div class="RichEditor-pictographs" aria-hidden="true"></div>
                                                </div>
                                            </div>
                                            <div class="RichEditor-mozillaCursorWorkaround">&nbsp;</div>
                                        </div>
                                        <textarea aria-hidden="true" class="tweet-box-shadow hidden" name="status"></textarea>
                                    </div>
                                    <div style="position: absolute; visibility: hidden;">
                                        <div>What's happening?</div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="stream-container conversations-enabled">
                            <div class="stream">
                                <ol class="stream-items js-navigable-stream" id="stream-items-id">
                                    <li class="js-stream-item stream-item stream-item">
                                        <div class="tweet js-stream-tweet js-actionable-tweet js-profile-popup-actionable original-tweet js-original-tweet my-tweet">
                                            <div class="context"></div>
                                            <div class="content">
                                                <div class="stream-item-header">
                                                    <a class="account-group js-account-group js-action-profile js-user-profile-link js-nav" href="">
                                                        <img class="avatar js-action-profile-avatar" src="${tientx}/37ce316c5e082735208859499ae45cc6_bigger.jpeg" alt="">
                                                        <strong class="fullname js-action-profile-name show-popup-with-id" data-aria-label-part="">${currentUser.account}</strong>
                                                        <span></span>
                                                        <span class="username js-action-profile-name" data-aria-label-part=""><s>@</s><b>${currentUser.account}</b></span>
                                                    </a>
                                                    <small class="time">
                                                        <a href="" class="tweet-timestamp js-permalink js-nav js-tooltip">
                                                            <span class="_timestamp js-short-timestamp">22 Aug 2014</span>
                                                        </a>
                                                    </small>
                                                </div>
                                                <div class="js-tweet-text-container">
                                                    <p class="TweetTextSize TweetTextSize--26px js-tweet-text tweet-text" lang="fr" data-aria-label-part="0">Test tweet 1</p>
                                                </div>
                                                <div class="stream-item-footer">
                                                    <div class="ProfileTweet-actionList js-actions" role="group">
                                                        <div class="ProfileTweet-action ProfileTweet-action--reply">
                                                            <button class="ProfileTweet-actionButton u-textUserColorHover js-actionButton js-actionReply" type="button">
                                                                <span class="Icon Icon--reply"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--retweet js-toggleState js-toggleRt">
                                                            <button class="ProfileTweet-actionButton  js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                            <button class="ProfileTweet-actionButtonUndo js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--favorite js-toggleState">
                                                            <button class="ProfileTweet-actionButton js-actionButton js-actionFavorite" type="button"></button>
                                                            <button class="ProfileTweet-actionButtonUndo u-linkClean js-actionButton js-actionFavorite" type="button"></button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--more js-more-ProfileTweet-actions">
                                                            <div class="dropdown">
                                                                <button class="ProfileTweet-actionButton u-textUserColorHover dropdown-toggle js-dropdown-toggle" type="button">
                                                                    <span class="Icon Icon--dots"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="js-stream-item stream-item stream-item">
                                        <div class="tweet js-stream-tweet js-actionable-tweet js-profile-popup-actionable original-tweet js-original-tweet my-tweet">
                                            <div class="context"></div>
                                            <div class="content">
                                                <div class="stream-item-header">
                                                    <a class="account-group js-account-group js-action-profile js-user-profile-link js-nav" href="">
                                                        <img class="avatar js-action-profile-avatar" src="${tientx}/37ce316c5e082735208859499ae45cc6_bigger.jpeg" alt="">
                                                        <strong class="fullname js-action-profile-name show-popup-with-id" data-aria-label-part="">${currentUser.account}</strong>
                                                        <span></span>
                                                        <span class="username js-action-profile-name" data-aria-label-part=""><s>@</s><b>${currentUser.account}</b></span>
                                                    </a>
                                                    <small class="time">
                                                        <a href="" class="tweet-timestamp js-permalink js-nav js-tooltip">
                                                            <span class="_timestamp js-short-timestamp">22 Aug 2014</span>
                                                        </a>
                                                    </small>
                                                </div>
                                                <div class="js-tweet-text-container">
                                                    <p class="TweetTextSize TweetTextSize--26px js-tweet-text tweet-text" lang="fr" data-aria-label-part="0">Test tweet 1</p>
                                                </div>
                                                <div class="stream-item-footer">
                                                    <div class="ProfileTweet-actionList js-actions" role="group">
                                                        <div class="ProfileTweet-action ProfileTweet-action--reply">
                                                            <button class="ProfileTweet-actionButton u-textUserColorHover js-actionButton js-actionReply" type="button">
                                                                <span class="Icon Icon--reply"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--retweet js-toggleState js-toggleRt">
                                                            <button class="ProfileTweet-actionButton  js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                            <button class="ProfileTweet-actionButtonUndo js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--favorite js-toggleState">
                                                            <button class="ProfileTweet-actionButton js-actionButton js-actionFavorite" type="button"></button>
                                                            <button class="ProfileTweet-actionButtonUndo u-linkClean js-actionButton js-actionFavorite" type="button"></button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--more js-more-ProfileTweet-actions">
                                                            <div class="dropdown">
                                                                <button class="ProfileTweet-actionButton u-textUserColorHover dropdown-toggle js-dropdown-toggle" type="button">
                                                                    <span class="Icon Icon--dots"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="js-stream-item stream-item stream-item">
                                        <div class="tweet js-stream-tweet js-actionable-tweet js-profile-popup-actionable original-tweet js-original-tweet my-tweet">
                                            <div class="context"></div>
                                            <div class="content">
                                                <div class="stream-item-header">
                                                    <a class="account-group js-account-group js-action-profile js-user-profile-link js-nav" href="">
                                                        <img class="avatar js-action-profile-avatar" src="${tientx}/37ce316c5e082735208859499ae45cc6_bigger.jpeg" alt="">
                                                        <strong class="fullname js-action-profile-name show-popup-with-id" data-aria-label-part="">${currentUser.account}</strong>
                                                        <span></span>
                                                        <span class="username js-action-profile-name" data-aria-label-part=""><s>@</s><b>${currentUser.account}</b></span>
                                                    </a>
                                                    <small class="time">
                                                        <a href="" class="tweet-timestamp js-permalink js-nav js-tooltip">
                                                            <span class="_timestamp js-short-timestamp">22 Aug 2014</span>
                                                        </a>
                                                    </small>
                                                </div>
                                                <div class="js-tweet-text-container">
                                                    <p class="TweetTextSize TweetTextSize--26px js-tweet-text tweet-text" lang="fr" data-aria-label-part="0">Test tweet 1</p>
                                                </div>
                                                <div class="stream-item-footer">
                                                    <div class="ProfileTweet-actionList js-actions" role="group">
                                                        <div class="ProfileTweet-action ProfileTweet-action--reply">
                                                            <button class="ProfileTweet-actionButton u-textUserColorHover js-actionButton js-actionReply" type="button">
                                                                <span class="Icon Icon--reply"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--retweet js-toggleState js-toggleRt">
                                                            <button class="ProfileTweet-actionButton  js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                            <button class="ProfileTweet-actionButtonUndo js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--favorite js-toggleState">
                                                            <button class="ProfileTweet-actionButton js-actionButton js-actionFavorite" type="button"></button>
                                                            <button class="ProfileTweet-actionButtonUndo u-linkClean js-actionButton js-actionFavorite" type="button"></button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--more js-more-ProfileTweet-actions">
                                                            <div class="dropdown">
                                                                <button class="ProfileTweet-actionButton u-textUserColorHover dropdown-toggle js-dropdown-toggle" type="button">
                                                                    <span class="Icon Icon--dots"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="js-stream-item stream-item stream-item">
                                        <div class="tweet js-stream-tweet js-actionable-tweet js-profile-popup-actionable original-tweet js-original-tweet my-tweet">
                                            <div class="context"></div>
                                            <div class="content">
                                                <div class="stream-item-header">
                                                    <a class="account-group js-account-group js-action-profile js-user-profile-link js-nav" href="">
                                                        <img class="avatar js-action-profile-avatar" src="${tientx}/37ce316c5e082735208859499ae45cc6_bigger.jpeg" alt="">
                                                        <strong class="fullname js-action-profile-name show-popup-with-id" data-aria-label-part="">${currentUser.account}</strong>
                                                        <span></span>
                                                        <span class="username js-action-profile-name" data-aria-label-part=""><s>@</s><b>${currentUser.account}</b></span>
                                                    </a>
                                                    <small class="time">
                                                        <a href="" class="tweet-timestamp js-permalink js-nav js-tooltip">
                                                            <span class="_timestamp js-short-timestamp">22 Aug 2014</span>
                                                        </a>
                                                    </small>
                                                </div>
                                                <div class="js-tweet-text-container">
                                                    <p class="TweetTextSize TweetTextSize--26px js-tweet-text tweet-text" lang="fr" data-aria-label-part="0">Test tweet 1</p>
                                                </div>
                                                <div class="stream-item-footer">
                                                    <div class="ProfileTweet-actionList js-actions" role="group">
                                                        <div class="ProfileTweet-action ProfileTweet-action--reply">
                                                            <button class="ProfileTweet-actionButton u-textUserColorHover js-actionButton js-actionReply" type="button">
                                                                <span class="Icon Icon--reply"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--retweet js-toggleState js-toggleRt">
                                                            <button class="ProfileTweet-actionButton  js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                            <button class="ProfileTweet-actionButtonUndo js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--favorite js-toggleState">
                                                            <button class="ProfileTweet-actionButton js-actionButton js-actionFavorite" type="button"></button>
                                                            <button class="ProfileTweet-actionButtonUndo u-linkClean js-actionButton js-actionFavorite" type="button"></button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--more js-more-ProfileTweet-actions">
                                                            <div class="dropdown">
                                                                <button class="ProfileTweet-actionButton u-textUserColorHover dropdown-toggle js-dropdown-toggle" type="button">
                                                                    <span class="Icon Icon--dots"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="js-stream-item stream-item stream-item">
                                        <div class="tweet js-stream-tweet js-actionable-tweet js-profile-popup-actionable original-tweet js-original-tweet my-tweet">
                                            <div class="context"></div>
                                            <div class="content">
                                                <div class="stream-item-header">
                                                    <a class="account-group js-account-group js-action-profile js-user-profile-link js-nav" href="">
                                                        <img class="avatar js-action-profile-avatar" src="${tientx}/37ce316c5e082735208859499ae45cc6_bigger.jpeg" alt="">
                                                        <strong class="fullname js-action-profile-name show-popup-with-id" data-aria-label-part="">${currentUser.account}</strong>
                                                        <span></span>
                                                        <span class="username js-action-profile-name" data-aria-label-part=""><s>@</s><b>${currentUser.account}</b></span>
                                                    </a>
                                                    <small class="time">
                                                        <a href="" class="tweet-timestamp js-permalink js-nav js-tooltip">
                                                            <span class="_timestamp js-short-timestamp">22 Aug 2014</span>
                                                        </a>
                                                    </small>
                                                </div>
                                                <div class="js-tweet-text-container">
                                                    <p class="TweetTextSize TweetTextSize--26px js-tweet-text tweet-text" lang="fr" data-aria-label-part="0">Test tweet 1</p>
                                                </div>
                                                <div class="stream-item-footer">
                                                    <div class="ProfileTweet-actionList js-actions" role="group">
                                                        <div class="ProfileTweet-action ProfileTweet-action--reply">
                                                            <button class="ProfileTweet-actionButton u-textUserColorHover js-actionButton js-actionReply" type="button">
                                                                <span class="Icon Icon--reply"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--retweet js-toggleState js-toggleRt">
                                                            <button class="ProfileTweet-actionButton  js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                            <button class="ProfileTweet-actionButtonUndo js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--favorite js-toggleState">
                                                            <button class="ProfileTweet-actionButton js-actionButton js-actionFavorite" type="button"></button>
                                                            <button class="ProfileTweet-actionButtonUndo u-linkClean js-actionButton js-actionFavorite" type="button"></button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--more js-more-ProfileTweet-actions">
                                                            <div class="dropdown">
                                                                <button class="ProfileTweet-actionButton u-textUserColorHover dropdown-toggle js-dropdown-toggle" type="button">
                                                                    <span class="Icon Icon--dots"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="js-stream-item stream-item stream-item">
                                        <div class="tweet js-stream-tweet js-actionable-tweet js-profile-popup-actionable original-tweet js-original-tweet my-tweet">
                                            <div class="context"></div>
                                            <div class="content">
                                                <div class="stream-item-header">
                                                    <a class="account-group js-account-group js-action-profile js-user-profile-link js-nav" href="">
                                                        <img class="avatar js-action-profile-avatar" src="${tientx}/37ce316c5e082735208859499ae45cc6_bigger.jpeg" alt="">
                                                        <strong class="fullname js-action-profile-name show-popup-with-id" data-aria-label-part="">${currentUser.account}</strong>
                                                        <span></span>
                                                        <span class="username js-action-profile-name" data-aria-label-part=""><s>@</s><b>${currentUser.account}</b></span>
                                                    </a>
                                                    <small class="time">
                                                        <a href="" class="tweet-timestamp js-permalink js-nav js-tooltip">
                                                            <span class="_timestamp js-short-timestamp">22 Aug 2014</span>
                                                        </a>
                                                    </small>
                                                </div>
                                                <div class="js-tweet-text-container">
                                                    <p class="TweetTextSize TweetTextSize--26px js-tweet-text tweet-text" lang="fr" data-aria-label-part="0">Test tweet 1</p>
                                                </div>
                                                <div class="stream-item-footer">
                                                    <div class="ProfileTweet-actionList js-actions" role="group">
                                                        <div class="ProfileTweet-action ProfileTweet-action--reply">
                                                            <button class="ProfileTweet-actionButton u-textUserColorHover js-actionButton js-actionReply" type="button">
                                                                <span class="Icon Icon--reply"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--retweet js-toggleState js-toggleRt">
                                                            <button class="ProfileTweet-actionButton  js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                            <button class="ProfileTweet-actionButtonUndo js-actionButton js-actionRetweet" type="button">
                                                                <span class="Icon Icon--retweet"></span>
                                                            </button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--favorite js-toggleState">
                                                            <button class="ProfileTweet-actionButton js-actionButton js-actionFavorite" type="button"></button>
                                                            <button class="ProfileTweet-actionButtonUndo u-linkClean js-actionButton js-actionFavorite" type="button"></button>
                                                        </div>
                                                        <div class="ProfileTweet-action ProfileTweet-action--more js-more-ProfileTweet-actions">
                                                            <div class="dropdown">
                                                                <button class="ProfileTweet-actionButton u-textUserColorHover dropdown-toggle js-dropdown-toggle" type="button">
                                                                    <span class="Icon Icon--dots"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="stream-footer">
                                        <div class="timeline-end has-items">
                                            <div class="stream-end">
                                                <div class="stream-end-inner">
                                                    <span class="Icon Icon--large Icon--logo"></span>
                                                    <p>
                                                        <button type="button" class="btn-link back-to-top hidden" style="display: inline-block;">Back to top</button>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard dashboard-right">
                        <div class="module roaming-module wtf-module js-wtf-module  has-content">
                            <div class="flex-module">
                                <div class="flex-module-header">
                                    <h3>Who to follow</h3>
                                    <small>· </small>
                                    <button type="button" class="btn-link js-refresh-suggestions">
                                        <small>Refresh</small>
                                    </button>
                                    <small class="view-all">· <a class="js-view-all-link" href="">View all</a></small>
                                </div>
                                <div class="js-recommended-followers dashboard-user-recommendations flex-module-inner" style="opacity: 1;">
                                    <div class="js-account-summary account-summary js-actionable-user">
                                        <div class="dismiss js-action-dismiss">
                                            <span class="Icon Icon--close"></span>
                                        </div>
                                        <div class="content">
                                            <a class="account-group js-recommend-link js-user-profile-link user-thumb" href="">
                                                <img class="avatar js-action-profile-avatar " src="${tientx}/yF2B4aDz_normal.jpeg" alt="">
                                                <span class="account-group-inner js-action-profile-name">
                                                    <b class="fullname">madinhthiep</b>
                                                    <span class="username"><s>@</s><span class="js-username">maidinhthiep</span></span>
                                                </span>
                                            </a>
                                            <small class="metadata social-context">
                                                Followed by <a class="pretty-link user-profile-link js-user-profile-link" href=""><b>T Ling Jei</b></a>
                                            </small>
                                            <div class="user-actions not-following not-muting">
                                                <button type="button" class="small-follow-btn follow-btn btn small follow-button js-recommended-item">
                                                    <span class="Icon Icon--follow"></span>
                                                    Follow
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="js-account-summary account-summary js-actionable-user">
                                        <div class="dismiss js-action-dismiss">
                                            <span class="Icon Icon--close"></span>
                                        </div>
                                        <div class="content">
                                            <a class="account-group js-recommend-link js-user-profile-link user-thumb" href="">
                                                <img class="avatar js-action-profile-avatar " src="${tientx}/Kw4_keT7_normal.jpg" alt="">
                                                <span class="account-group-inner js-action-profile-name" data-user-id="53153263">
                                                    <b class="fullname">Tyra Banks</b><span class="Icon Icon--verified Icon--small">
                                                        <span class="u-hiddenVisually">Verified account</span>
                                                    </span>
                                                    <span class="username"><s>@</s><span class="js-username">tyrabanks</span></span>
                                                </span>
                                            </a>
                                            <div class="user-actions not-following not-muting">
                                                <button type="button" class="small-follow-btn follow-btn btn small follow-button js-recommended-item">
                                                    <span class="Icon Icon--follow"></span>
                                                    Follow
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="js-account-summary account-summary js-actionable-user">
                                        <div class="dismiss js-action-dismiss">
                                            <span class="Icon Icon--close"></span>
                                        </div>
                                        <div class="content">
                                            <a class="account-group js-recommend-link js-user-profile-link user-thumb" href="">
                                                <img class="avatar js-action-profile-avatar " src="${tientx}/Pinkdeborahanderson_112_normal.jpg" alt="">
                                                <span class="account-group-inner js-action-profile-name">
                                                    <b class="fullname">P!nk</b><span class="Icon Icon--verified Icon--small">
                                                        <span class="u-hiddenVisually">Verified account</span>
                                                    </span>
                                                    <span class="username"><s>@</s><span class="js-username">Pink</span></span>
                                                </span>
                                            </a>
                                            <div class="user-actions not-following not-muting">
                                                <button type="button" class="small-follow-btn follow-btn btn small follow-button js-recommended-item">
                                                    <span class="Icon Icon--follow"></span>
                                                    Follow
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="flex-module-footer">
                                    <a href="" class="js-find-friends-link">Find friends</a>
                                </div>
                            </div>
                        </div>
                        <div class="myadv module roaming-module">
                            <div class="flex-module">
                                <div id="slider">
                                    <h5>My Adv</h5>
                                    <a href="#" class="control_next">>></a>
                                    <a href="#" class="control_prev"><<</a>
                                    <ul>
                                        <li>
                                            <a href="">
                                                <img src="${image}/${topCts[0]}/1.png" title="${topCts[0]}" alt="${topCts[0]}">
                                                <h3>Sách chủ đề ${topCts[0]}</h3>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <img src="${image}/${topCts[1]}/1.png" title="${topCts[1]}" alt="${topCts[1]}">
                                                <h3>Sách chủ đề ${topCts[1]}</h3>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <img src="${image}/${topCts[2]}/1.png" title="${topCts[2]}" alt="${topCts[2]}">
                                                <h3>Sách chủ đề ${topCts[2]}</h3>
                                            </a>
                                        </li>
                                    </ul>  
                                </div>
                            </div>
                        </div>
                        <div class="Footer module roaming-module">
                            <div class="flex-module">
                                <div class="flex-module-inner js-items-container">
                                    <ul class="u-cf">
                                        <li class="Footer-item Footer-copyright copyright">© 2016 Twitter</li>
                                        <li class="Footer-item"><a class="Footer-link" href="">About</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Help</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Terms</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Privacy</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Cookies</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Ads info</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Brand</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Blog</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Status</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Apps</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Jobs</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Businesses</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Media</a></li>
                                        <li class="Footer-item"><a class="Footer-link" href="">Developers</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="flex-module Footer-adsModule">
                                <div class="flex-module-inner">
                                    <a href="">Advertise with Twitter</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script async="" src="${script}" type="text/javascript"></script>
    </body>
</html>
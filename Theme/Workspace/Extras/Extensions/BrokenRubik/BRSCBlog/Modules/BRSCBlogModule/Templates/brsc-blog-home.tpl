{{#if dsTopBanner}}
        <div >
            <a href="{{dsTopBannerURL}}" target="_blank">
                <img src="{{dsTopBanner}}" style="width:100%;">
            </a>
        </div>
    {{/if}}
<div class="brsc-blog-container">

    <div data-cms-area="home_cms_area_top" data-cms-area-filters="path"></div>
    
    {{#if banner}}
        <div class="brsc-blog-home-banner">
            <img src="{{banner}}">
        </div>
    {{/if}}

    



    {{#if searchTerm}}
        <h3 class="brsc-blog-search-title">Search results for: <strong>{{searchTerm}}</strong></h3>
    {{/if}}

    <div class="brsc-blog-row">
        <div class="col-md-8">
        <h1 class="brsc-blog-container-main-title">{{{blogHeader}}}</h1>
        <p class="brsc-blog-description">
            {{{blogDescription}}}
        </p>
    </div>
        <div class="brsc-blog-post-container">
            <div data-view="Posts.List"></div>

            <div class="brsc-blog-pagination-container">
                {{#if displayOlderPostsLink}}
                    <div class="brsc-blog-pagination-older">
                        <a href="{{currentURL}}{{olderPostsPageURLParams}}"> Older Posts</a>
                    </div>
                {{/if}}

                {{#if displayNewerPostsLink}}
                    <div class="brsc-blog-pagination-newer">
                        <a href="{{currentURL}}{{newerPostsPageURLParams}}">Newer Posts</a>
                    </div>
                {{/if}}
            </div>
        </div>
        <div class="brsc-blog-side-menu-container" data-view="Blog.SideNav"></div>
    </div>

    <div data-cms-area="home_cms_area_bottom" data-cms-area-filters="path"></div>
</div>

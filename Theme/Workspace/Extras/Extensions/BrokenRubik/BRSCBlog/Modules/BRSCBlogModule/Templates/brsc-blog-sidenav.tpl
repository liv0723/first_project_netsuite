<div class="brsc-blog-side-menu-form">
    <form novalidate autocomplete="off" data-type="search-posts-form">
        <div class="form-group form-group-full">
            <input class="input-search-box" type="text" class="form-control" id="search" placeholder="Search articles" name="search">
            <button type="submit" class="btn-submit-search"><i class="icon-search"></i></button>
        </div>
    </form>
</div>

{{#if categories}}
    <ul class="brsc-blog-side-menu">
        <li>
            <h2>Categories</h2>
        </li>
        {{#each categories}}
            <li  class="brsc-blog-side-menu-list">
                <a href="/{{../blogURL}}/{{../categoryURL}}/{{url}}">
                    {{name}}
                </a>
            </li>
        {{/each}}
    </ul>
{{/if}}

{{#if displayArchive}}
    {{#if archive}}
        <ul class="brsc-blog-side-menu">
            <li>
                <h2>Archive</h2>
            </li>
            {{#each archive}}
                <li>
                    <a href="/{{../blogURL}}/archive/{{url}}">{{name}}</a>
                </li>
            {{/each}}
        </ul>
    {{/if}}
{{/if}}

{{#if featuredItems}}
    <div class="brsc-blog-featured-items-container {{#if featuredItemsSticky}}brsc-blog-featured-items-sticky{{/if}}">
        <h2 class="brsc-blog-h2-title">Featured Items</h2>
        <div class="brsc-blog-featured-item" data-view="Blog.Featured.Items"></div>
    </div>
{{/if}}

<div data-cms-area="sidenav_cms_area" data-cms-area-filters="path"></div>

{{#if campaign}}
        {{#if campaign.custrecord_br_ds_right_banner.name}}
            <div class="brsc-blog-banner blog-campaign-sidebar-right blog-campaign-desktop">
                <a href="{{ campaign.custrecord_br_right_ds_banner_href}}" target="_blank">
                    <img src="{{resizeImage campaign.custrecord_br_ds_right_banner.name 'br_sc_blog_large'}}" alt="{{campaign.custrecord_br_ds_right_banner.name}}">
                </a>
            </div>
        {{/if}}
    {{/if}}
</div>


<div class="brsc-blog-container">
    {{#if isPageGenerator}}
        <img width="1500" height="1500" style="pointer-events: none; position: absolute; top: 0; left: 0; width: 1500px; height: 1500px; max-width: 99vw; max-height: 99vh;"  src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI5OTk5OXB4IiBoZWlnaHQ9Ijk5OTk5cHgiIHZpZXdCb3g9IjAgMCA5OTk5OSA5OTk5OSIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48ZyBzdHJva2U9Im5vbmUiIGZpbGw9InR1cmUiIGZpbGwtb3BhY2l0eT0iMCI+PHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9Ijk5OTk5IiBoZWlnaHQ9Ijk5OTk5Ij48L3JlY3Q+IDwvZz4gPC9zdmc+">
    {{/if}}
    <div data-cms-area="post_cms_area_top" data-cms-area-filters="path"></div>

    <a href="/{{blogURL}}" data-target="#{{blogURL}}/" class="brsc-go-back-icon-container">
        <i class="brsc-go-back-icon"></i>Go back
    </a>
    
    <h1 class="brsc-blog-container-main-title">
        {{#if post}}
            {{post.name}}
        {{else}}
            Post was not found
        {{/if}}
    </h1>
    {{#if campaign}}


        {{#if campaign.custrecord_br_ds_top_banner.name}}
            <div class="brsc-blog-banner blog-campaign-header blog-campaign-desktop">
                <a href="{{campaign.custrecord_br_top_ds_banner_href}}" target="_blank">
                    <img src="{{resizeImage campaign.custrecord_br_ds_top_banner.name 'br_sc_blog_large'}}" alt="{{campaign.custrecord_br_ds_top_banner.name}}">
                </a>
            </div>
        {{/if}}

        {{#if campaign.custrecord_br_mb_top_banner.name}}
            <div class="brsc-blog-banner blog-campaign-mobile">
                <a href="{{campaign.custrecord_br_top_mob_banner_href}}" target="_blank">
                    <img src="{{resizeImage campaign.custrecord_br_mb_top_banner.name 'br_sc_blog_large'}}" alt="{{campaign.custrecord_br_mb_top_banner.name}}">
                </a>
            </div>
        {{/if}}


    {{/if}}
    <div class="brsc-blog-row">
        <div class="brsc-blog-post-container">
            {{#if post}}
                {{#if post.custrecord_sca_blog_post_banner.name}}
                    <div class="brsc-blog-banner">
                        <img src="{{resizeImage post.custrecord_sca_blog_post_banner.name 'br_sc_blog_large'}}" alt="{{post.name}}">
                    </div>
                {{/if}}

                <h5 class="brsc-blog-created">
                    {{#if configuration.custrecord_sca_blog_display_author_post}}
                        {{#if post.custrecord_sca_blog_post_author.name}}
                            By
                            <a href="{{#unless isPreview}}/{{blogURL}}/author/{{post.custrecord_sca_blog_author_url}}{{/unless}}">
                                {{post.custrecord_sca_blog_post_author.name}}
                            </a>
                            {{#if configuration.custrecord_sca_blog_display_created_post}}
                                <div class="brsc-blog-dot-separator">
                                    &#183;
                                </div>
                            {{/if}}
                        {{/if}}
                    {{/if}}
                    {{#if configuration.custrecord_sca_blog_display_created_post}}
                        {{post.formulatext}}
                    {{/if}}
                </h5>

                <div class="brsc-blog-content">

                    {{#if configuration.hasShareMethods}}
                    <div class="brsc-blog-content-share-wrapper">

                        <div class="brsc-blog-content-share-container">

                                <h5 class="brsc-blog-share-title">Share</h5>
                                <ul>
                                    {{#if configuration.custrecord_sca_blog_share_facebook}}
                                    <li>
                                        <a href="https://www.facebook.com/sharer/sharer.php?u={{shareURL}}" target="_blank">
                                            <i class="brsc-blog-share-icon-facebook"></i><span>Facebook</span>
                                        </a>
                                    </li>
                                    {{/if}}
                                    {{#if configuration.custrecord_sca_blog_share_twitter}}
                                    <li>
                                        <a href="https://twitter.com/intent/tweet?text={{post.name}}&url={{shareURL}}" target="_blank">
                                            <i class="brsc-blog-share-icon-twitter"></i><span>Twitter</span>
                                        </a>
                                    </li>
                                    {{/if}}
                                    {{#if configuration.custrecord_sca_blog_share_linkedin}}
                                    <li>
                                        <a href="https://www.linkedin.com/shareArticle?mini=true&url={{shareURL}}&title={{post.name}}" target="_blank">
                                            <i class="brsc-blog-share-icon-linkedin"></i><span>Linkedin</span>
                                        </a>
                                    </li>
                                    {{/if}}
                                    {{#if configuration.custrecord_sca_blog_share_email}}
                                    <li>
                                        <a href="mailto:?subject={{post.name}}&body={{shareURL}}">
                                            <i class="brsc-blog-share-icon-email"></i><span>Email</span>
                                        </a>
                                    </li>
                                    {{/if}}
                                </ul>

                        </div>

                    </div>
                    {{/if}}

                    <div class="brsc-blog-content-entry">
                        {{{post.custrecord_sca_blog_post_content}}}
                        <div data-view="Post.Footer"></div>
                    </div>
                </div>

                <div class="brsc-blog-tags">
                    {{#each tags}}
                        <a href="{{#unless ../isPreview}}/{{../blogURL}}/{{../tagURL}}/{{url}}{{/unless}}">{{name}}</a>
                    {{/each}}
                </div>
                {{#if campaign}}
                    {{#if campaign.custrecord_br_ds_bottom_banner.name}}

                        <div class="brsc-blog-banner blog-campaign-footer blog-campaign-desktop">
                            <a href="{{campaign.custrecord_br_bottom_ds_banner_href}}" target="_blank">
                                <img src="{{resizeImage campaign.custrecord_br_ds_bottom_banner.name 'br_sc_blog_large'}}" alt="{{campaign.custrecord_br_ds_bottom_banner.name}}">
                            </a>               
                        </div>
                    {{/if}}
                    {{#if campaign.custrecord_br_ds_bottom_banner.name}}

                        <div class="brsc-blog-banner blog-campaign-mobile">
                            <a href="{{campaign.custrecord_br_bottom_mob_banner_href}}" target="_blank">
                                <img src="{{resizeImage campaign.custrecord_br_mb_bottom_banner.name 'br_sc_blog_large'}}" alt="{{campaign.custrecord_br_mb_bottom_banner.name}}">
                            </a>               
                        </div>
                    {{/if}}
                {{/if}}
                {{#if hasRelatedItems}}
                    <div class="brsc-blog-related-items-container">
                        <h2 class="brsc-blog-h2-title">Related Items</h2>
                        <div data-view="Post.RelatedItems"  class="facets-facet-browse-items"></div>
                    </div>
                {{/if}}

                <div data-cms-area="post_cms_area_bottom" data-cms-area-filters="path"></div>

                {{#if isPostCommentsAvailable}}

                    <div data-view="Blog.Comments"></div>

                {{/if}}
            {{else}}
                <h3 class="brsc-blog-post-not-found">
                    {{translate 'Post does not exist or was deleted.'}}
                </h3>
            {{/if}}
        </div>

        <div class="brsc-blog-side-menu-container" data-view="Blog.SideNav"></div>
        
    </div>
</div>

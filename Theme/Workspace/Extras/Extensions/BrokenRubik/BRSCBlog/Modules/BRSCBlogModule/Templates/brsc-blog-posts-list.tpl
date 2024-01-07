<div class="brsc-blog-row">
    {{#each posts}}
        <div class="brsc-blog-home-post{{#unless ../hideFeaturedItems}}{{#if custrecord_sca_blog_post_featured}}-featured{{/if}}{{/unless}}">
            {{#if custrecord_sca_blog_post_banner.name}}
                <div class="brsc-blog-banner">
                    <a class="brsc-blog-banner-link" href="/{{custrecord_sca_blog_url}}/{{custrecord_sca_blog_post_url}}">
                        {{#if custrecord_sca_blog_post_featured}}
                            <img src="{{resizeImage custrecord_sca_blog_post_banner.name 'br_sc_blog_large'}}" alt="{{name}}">
                        {{else}}
                            <img src="{{resizeImage custrecord_sca_blog_post_banner.name 'br_sc_blog_list'}}" alt="{{name}}">
                        {{/if}}
                    </a>
                </div>
            {{/if}}
            <h2 class="brsc-blog-home-title">
                <a href="/{{custrecord_sca_blog_url}}/{{custrecord_sca_blog_post_url}}">
                    {{name}}
                </a>
            </h2>

            <div class="brsc-blog-home-intro">
                <p class="brsc-blog-home-intro-description">{{custrecord_sca_blog_post_intro}}</p>
                <a class="brsc-blog-intro-read-more" href="/{{custrecord_sca_blog_url}}/{{custrecord_sca_blog_post_url}}">Read More</a>
            </div>

            <h5 class="brsc-blog-created">
                {{#if ../configuration.custrecord_sca_blog_display_authorlist}}
                    {{#if custrecord_sca_blog_post_author.name}}
                        By
                        <a href="/{{custrecord_sca_blog_url}}/author/{{custrecord_sca_blog_author_url}}">
                            {{custrecord_sca_blog_post_author.name}}
                        </a>
                        <div class="brsc-blog-dot-separator">
                            &#183;
                        </div>
                    {{/if}}
                {{/if}}
                {{#if ../configuration.custrecord_sca_blog_display_created_list}}
                    {{formulatext}}
                {{/if}}
            </h5>

        </div>
    {{else}}
        <div class="col-md-12"></div>
    {{/each}}
</div>

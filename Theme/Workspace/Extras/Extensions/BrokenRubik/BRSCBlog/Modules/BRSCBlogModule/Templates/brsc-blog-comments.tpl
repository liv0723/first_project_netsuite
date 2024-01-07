<h2 class="brsc-blog-h2-title">Comments</h2>

{{#if comments}}

    <div class="brsc-blog-post-comments-wrapper">

        {{#each comments}}

        <div class="brsc-blog-post-comments-container">
            <div class="brsc-blog-post-comments-content {{#if replies}}has-replies{{/if}}">
                <p class="comment-author">
                    {{#if custrecord_sca_blog_comment_website}}
                        <a href="{{custrecord_sca_blog_comment_website}}" rel="nofollow" target="_blank">
                    {{/if}}
                        {{custrecord_sca_blog_comment_fname}} {{custrecord_sca_blog_comment_lname}}
                    {{#if custrecord_sca_blog_comment_website}}
                        </a>
                    {{/if}}
                    <span>wrote:</span>
                </p>
                <p class="comment-content">
                    {{custrecord_sca_blog_comment_content}}
                </p>
                <p class="comment-date">
                    On {{created}}
                </p>
            </div>
            {{#each replies}}
                <div class="brsc-blog-post-comments-content comment-replyment">
                    <p class="comment-author">
                        {{#if custrecord_sca_blog_comment_website}}
                            <a href="{{custrecord_sca_blog_comment_website}}" rel="nofollow" target="_blank">
                        {{/if}}
                        {{custrecord_sca_blog_comment_fname}} {{custrecord_sca_blog_comment_lname}}
                        {{#if custrecord_sca_blog_comment_website}}
                            </a>
                        {{/if}}
                        <span>replied:</span>
                    </p>
                    <p class="comment-content">
                        {{custrecord_sca_blog_comment_content}}
                    </p>
                    <p class="comment-date">
                        On {{created}}
                    </p>
                </div>
            {{/each}}
            {{#unless @last}}
                {{#if replies}}
                    <div class="brsc-blog-replies-border"></div>
                {{/if}}
            {{/unless}}
        </div>

        {{/each}}
    </div>
{{/if}}

<div class="brsc-blog-post-form-container">
    <div class="brsc-blog-post-comments-form">
        <form novalidate autocomplete="off">
            <div class="form-group form-group-half">
                <label for="firstName">
                    {{translate 'First Name'}}
                </label>
                <input type="text" class="form-control" id="firstName" placeholder="{{translate 'First Name'}}" name="firstName">
                <p class="control-error">&nbsp;</p>
            </div>
            <div class="form-group form-group-half">
                <label for="lastName">
                    {{translate 'Last Name'}}
                </label>
                <input type="text" class="form-control" id="lastName" placeholder="{{translate 'Last Name'}}" name="lastName">
                <p class="control-error">&nbsp;</p>
            </div>
            <div class="form-group form-group-half">
                <label for="email">
                    {{translate 'Email'}}
                </label>
                <input type="email" class="form-control" id="email" placeholder="{{translate 'Email'}}" name="email">
                <p class="control-error">&nbsp;</p>
            </div>
            <div class="form-group form-group-half">
                <label for="website">
                    {{translate 'Website'}}
                </label>
                <input type="text" class="form-control" id="website" placeholder="{{translate 'Website'}}" name="website">
                <p class="control-error">&nbsp;</p>
            </div>
            <div class="form-group form-group-full">
                <label for="comment">
                    {{translate 'Comment'}}
                </label>
                <textarea class="form-control" rows="3" id="comment" name="comment" placeholder="{{translate 'Comment'}}"></textarea>
                <p class="control-error">&nbsp;</p>
            </div>
            <input type="hidden" name="postId" value="{{postId}}">
            <div class="form-group form-group-full">
                <label class="check-me-out" for="emailSignup">
                    <input type="checkbox" id="emailSignup" name="emailSignup">
                    {{translate 'Subscribe to website newsletter'}}
                </label>
                <button type="submit" class="btn-submit-comment">{{translate 'Submit'}}</button>
            </div>
        </form>
        <div id="form-message" class="form-message"></div>
    </div>
</div>

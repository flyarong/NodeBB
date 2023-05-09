<div id="post-tooltip" class="card card-body shadow text-bg-light" style="position:absolute; z-index: 1;">
    <div class="clearfix">
        <div class="icon float-start">
            <a href="{{{ if post.user.userslug }}}{config.relative_path}/user/{post.user.userslug}{{{ else }}}#{{{ end }}}">
                {buildAvatar(post.user, "24px", true, "", "user/picture")} {post.user.username}
            </a>
        </div>
        <small class="float-end">
            <span class="timeago" title="{post.timestampISO}"></span>
        </small>
    </div>
    <div class="content">{post.content}</div>
</div>

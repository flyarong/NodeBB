<div class="row manage-users">
	<div class="col-lg-12">
		<div class="d-flex justify-content-between">
			<div class="row">
				<div class="col">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="[[global:search]]" id="user-search" value="{query}">
						<span class="input-group-text px-2 search-button"><i class="fa fa-search"></i></span>
					</div>
				</div>
				<div class="col">
					<select id="user-search-by" class="form-select">
						<option value="username" {{{if searchBy_username}}}selected{{{end}}}>[[admin/manage/users:search.username]]</option>
						<option value="email" {{{if searchBy_email}}}selected{{{end}}}>[[admin/manage/users:search.email]]</option>
						<option value="uid" {{{if searchBy_uid}}}selected{{{end}}}>[[admin/manage/users:search.uid]]</option>
						<option value="ip" {{{if searchBy_ip}}}selected{{{end}}}>[[admin/manage/users:search.ip]]</option>
					</select>
				</div>
				<div class="col">
					<select id="results-per-page" class="form-select">
						<option value="50">[[admin/manage/users:50-per-page]]</option>
						<option value="100">[[admin/manage/users:100-per-page]]</option>
						<option value="250">[[admin/manage/users:250-per-page]]</option>
						<option value="500">[[admin/manage/users:500-per-page]]</option>
					</select>
				</div>
				<div class="col">
					<div class="btn-group" id="filter-by">
						<button type="button" class="btn btn-link dropdown-toggle" data-bs-toggle="dropdown">
							[[admin/manage/users:filter-by]] <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li data-filter-by="unverified" role="presentation">
								<a class="dropdown-item" role="menuitem" href="#"><i class="fa fa-fw {{{ if filterBy_unverified }}}fa-check{{{end}}}"></i>[[admin/manage/users:pills.unvalidated]]</a>
							</li>
							<li data-filter-by="verified" role="presentation">
								<a class="dropdown-item" role="menuitem" href="#"><i class="fa fa-fw {{{ if filterBy_verified }}}fa-check{{{end}}}"></i>[[admin/manage/users:pills.validated]]</a>
							</li>
							<li data-filter-by="banned" role="presentation">
								<a class="dropdown-item" role="menuitem" href="#"><i class="fa fa-fw {{{ if filterBy_banned }}}fa-check{{{end}}}"></i>[[admin/manage/users:pills.banned]]</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="">
				<div class="btn-group">
					<button class="btn btn-primary dropdown-toggle" id="action-dropdown" data-bs-toggle="dropdown" type="button" disabled="disabled">[[admin/manage/users:edit]] <span class="caret"></span></button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a href="#" class="dropdown-item validate-email"><i class="fa fa-fw fa-check"></i> [[admin/manage/users:validate-email]]</a></li>
						<li><a href="#" class="dropdown-item send-validation-email"><i class="fa fa-fw fa-mail-forward"></i> [[admin/manage/users:send-validation-email]]</a></li>
						<li><a href="#" class="dropdown-item password-reset-email"><i class="fa fa-fw fa-key"></i> [[admin/manage/users:password-reset-email]]</a></li>
						<li><a href="#" class="dropdown-item force-password-reset"><i class="fa fa-fw fa-unlock-alt"></i> [[admin/manage/users:force-password-reset]]</a></li>
						<li><a href="#" class="dropdown-item manage-groups"><i class="fa fa-fw fa-users"></i> [[admin/manage/users:manage-groups]]</a></li>
						<li class="dropdown-divider"></li>
						<li><a href="#" class="dropdown-item ban-user"><i class="fa fa-fw fa-gavel"></i> [[admin/manage/users:ban]]</a></li>
						<li><a href="#" class="dropdown-item ban-user-temporary"><i class="fa fa-fw fa-clock-o"></i> [[admin/manage/users:temp-ban]]</a></li>
						<li><a href="#" class="dropdown-item unban-user"><i class="fa fa-fw fa-comment-o"></i> [[admin/manage/users:unban]]</a></li>
						<li><a href="#" class="dropdown-item reset-lockout"><i class="fa fa-fw fa-unlock"></i> [[admin/manage/users:reset-lockout]]</a></li>
						<li class="divider"></li>
						<li><a href="#" class="dropdown-item delete-user"><i class="fa fa-fw fa-trash-o"></i> [[admin/manage/users:delete]]</a></li>
						<li><a href="#" class="dropdown-item delete-user-content"><i class="fa fa-fw fa-trash-o"></i> [[admin/manage/users:delete-content]]</a></li>
						<li><a href="#" class="dropdown-item delete-user-and-content"><i class="fa fa-fw fa-trash-o"></i> [[admin/manage/users:purge]]</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button"><i class="fa fa-ellipsis-v"></i></button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a class="dropdown-item" href="#" data-action="create">[[admin/manage/users:create]]</a></li>
						{{{ if showInviteButton }}}<li><a class="dropdown-item" href="#" component="user/invite">[[admin/manage/users:invite]]</a></li>{{{ end }}}
						<li><a target="_blank" href="#" class="dropdown-item export-csv">[[admin/manage/users:download-csv]]</a></li>
					</ul>
				</div>
			</div>
		</div>

		<hr/>

		<div class="search {search_display}">
			<i class="fa fa-spinner fa-spin hidden"></i>

			<div id="user-found-notify" class="label label-info {{{if !matchCount}}}hidden{{{end}}}">[[admin/manage/users:alerts.x-users-found, {matchCount}, {timing}]]</div>

			<div id="user-notfound-notify" class="label label-danger {{{if !query}}}hidden{{{end}}} {{{if matchCount}}}hidden{{{end}}}">[[admin/manage/users:search.not-found]]</div>
		</div>

		<div class="table-responsive">
			<table class="table table-striped users-table">
				<thead>
					<tr>
						<th><input component="user/select/all" type="checkbox"/></th>
						<th class="text-end text-muted">[[admin/manage/users:users.uid]]</th>
						<th class="text-muted">[[admin/manage/users:users.username]]</th>
						<th class="text-muted">[[admin/manage/users:users.email]]</th>
						<th class="text-muted">[[admin/manage/users:users.ip]]</th>
						<th data-sort="postcount" class="text-end pointer">[[admin/manage/users:users.postcount]] {{{if sort_postcount}}}<i class="fa fa-sort-{{{if reverse}}}down{{{else}}}up{{{end}}}">{{{end}}}</th>
						<th data-sort="reputation" class="text-end pointer">[[admin/manage/users:users.reputation]] {{{if sort_reputation}}}<i class="fa fa-sort-{{{if reverse}}}down{{{else}}}up{{{end}}}">{{{end}}}</th>
						<th data-sort="flags" class="text-end pointer">[[admin/manage/users:users.flags]] {{{if sort_flags}}}<i class="fa fa-sort-{{{if reverse}}}down{{{else}}}up{{{end}}}">{{{end}}}</th>
						<th data-sort="joindate" class="pointer">[[admin/manage/users:users.joined]] {{{if sort_joindate}}}<i class="fa fa-sort-{{{if reverse}}}down{{{else}}}up{{{end}}}">{{{end}}}</th>
						<th data-sort="lastonline" class="pointer">[[admin/manage/users:users.last-online]] {{{if sort_lastonline}}}<i class="fa fa-sort-{{{if reverse}}}down{{{else}}}up{{{end}}}">{{{end}}}</th>
					</tr>
				</thead>
				<tbody>
					{{{ each users }}}
					<tr class="user-row">
						<th><input component="user/select/single" data-uid="{users.uid}" type="checkbox"/></th>
						<td class="text-end">{users.uid}</td>
						<td>
							<i title="[[admin/manage/users:users.banned]]" class="ban fa fa-gavel text-danger{{{ if !users.banned }}} hidden{{{ end }}}"></i>
							<i class="administrator fa fa-shield text-success{{{ if !users.administrator }}} hidden{{{ end }}}"></i>
							<a href="{config.relative_path}/user/{users.userslug}"> {users.username}</a>
						</td>
						<td>
							{{{ if ../email }}}
							<i class="validated fa fa-check text-success{{{ if !users.email:confirmed }}} hidden{{{ end }}}" title="validated"></i>
							<i class="notvalidated fa fa-check text-muted{{{ if users.email:confirmed }}} hidden{{{ end }}}" title="not validated"></i>
							{../email}
							{{{ else }}}
							<i class="notvalidated fa fa-check text-muted" title="not validated"></i>
							<em class="text-muted">[[admin/manage/users:users.no-email]]</em>
							{{{ end }}}
						</td>
						<td>{users.ip}</td>
						<td class="text-end">{users.postcount}</td>
						<td class="text-end">{users.reputation}</td>
						<td class="text-end">{{{ if users.flags }}}{users.flags}{{{ else }}}0{{{ end }}}</td>
						<td><span class="timeago" title="{users.joindateISO}"></span></td>
						<td><span class="timeago" title="{users.lastonlineISO}"></span></td>
					</tr>
					{{{ end }}}
				</tbody>
			</table>
		</div>

		<!-- IMPORT partials/paginator.tpl -->

	</div>
</div>

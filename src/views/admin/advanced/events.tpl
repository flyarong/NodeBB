<div class="row events">
	<div class="col-lg-9">
		<h5><i class="fa fa-calendar-o"></i> [[admin/advanced/events:events]]</h5>
		{{{ if !events.length }}}
		<div class="alert alert-info">[[admin/advanced/events:no-events]]</div>
		{{{ end }}}
		<div class="events-list">
			{{{ each events }}}
			<div class="card mb-3">
				<div class="card-body">
					<div data-eid="{events.eid}">
						<div class="mb-3">
							<span class="badge bg-primary">#{events.eid}</span>
							<span class="badge bg-info">{events.type}</span>
							<span class="badge bg-info">uid {events.uid}</span>
							{{{ if events.ip }}}<span class="badge bg-info">{events.ip}</span>{{{ end }}}
							<a href="{config.relative_path}/user/{events.user.userslug}" target="_blank">{buildAvatar(events.user, "24px", true)}</a>
							<a href="{config.relative_path}/user/{events.user.userslug}" target="_blank">{events.user.username}</a>
							<span class="float-end delete-event ms-2 pointer"><i class="fa fa-trash-o"></i></span>
							<span class="float-end">{events.timestampISO}</span>
						</div>
						<pre class="text-bg-light p-3">{events.jsonString}</pre>
					</div>
				</div>
			</div>
			{{{ end }}}
			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
	<div class="col-lg-3 acp-sidebar">
		<div class="card">
			<h5 class="card-header">[[admin/advanced/events:filters]]</h5>
			<div class="card-body">
				<form role="form" id="filters">
					<div class="mb-3">
						<label class="form-label" for="type">[[admin/advanced/events:filter-type]]</label>
						<select id="type" name="type" class="form-select">
							{{{ each types }}}
							<option value="{./value}" {{{ if ./selected }}}selected{{{ end }}}>{./name} - ({./count}) </option>
							{{{ end }}}
						</select>
					</div>
					<div class="mb-3">
						<label class="form-label" for="start">[[admin/advanced/events:filter-start]]</label>
						<input type="date" id="start" name="start" value="{query.start}" class="form-control" />
					</div>
					<div class="mb-3">
						<label class="form-label" for="end">[[admin/advanced/events:filter-end]]</label>
						<input type="date" id="end" name="end" value="{query.end}" class="form-control" />
					</div>
					<div class="mb-3">
						<label class="form-label" for="perPage">[[admin/advanced/events:filter-perPage]]</label>
						<input type="text" id="perPage" name="perPage" value="{query.perPage}" class="form-control" />
					</div>
					<div class="d-grid">
						<button type="submit" class="btn btn-primary" id="apply">[[admin/advanced/events:filters-apply]]</button>
					</div>
				</form>
			</div>
		</div>
		<div class="card">
			<div class="card-body d-grid">
				<button class="btn btn-danger" data-action="clear">
					<i class="fa fa-eraser"></i> [[admin/advanced/events:delete-events]]
				</button>
			</div>
		</div>
	</div>
</div>

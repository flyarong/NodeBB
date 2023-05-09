<div id="widgets" class="row">
	<div class="col-md-8" id="active-widgets">
		<div class="dropdown mb-3">
			<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
			<span class="selected-template">{templates.0.template}</span> <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				{{{ each templates }}}
				<li><a class="dropdown-item" href="#" data-template="{./template}" data-toggle="pill">{./template}</a></li>
				{{{ end }}}
			</ul>
		</div>

		<div class="row">
			<div class="col-12">
				<div class="tab-content">
				{{{ each templates }}}
					<div class="tab-pane {{{ if @first }}}active{{{ end }}}" data-template="{./template}">
					{{{ each templates.areas }}}
						<div class="area" data-template="{templates.template}" data-location="{./location}">
							<h4>{./name} <small>{templates.template} / {./location}</small></h4>
							<div class="card card-body text-bg-light widget-area">

							</div>
						</div>
					{{{ end }}}
					</div>
				{{{ end }}}
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-4">
		<div class="card mb-3">
			<div class="card-header">[[admin/extend/widgets:available]]</div>
			<div class="card-body">
				<div class="available-widgets">
					<p>[[admin/extend/widgets:explanation]]</p>
					{{{ if !availableWidgets.length }}}
					<div class="alert alert-info">[[admin/extend/widgets:none-installed, {config.relative_path}/admin/extend/plugins]]</div>
					{{{ end }}}
					<p>
						<select id="widget-selector" class="form-control">
							{{{ each availableWidgets }}}
							<option value="{./widget}">{./name}</option>
							{{{ end }}}
						</select>
					</p>
					<div class="row">
						{{{ each availableWidgets }}}
						<div class="col-12">
							<div data-widget="{./widget}" class="card widget-panel  pointer hide">
								<div class="card-header">
									<strong>{./name}</strong>
									<small><br />{./description}</small>
								</div>
								<div class="card-body hidden">
									<form>
										{./content}
									</form>
								</div>
							</div>
						</div>
						{{{ end }}}
					</div>

					<div class="btn-group" component="clone">
						<button type="button" class="btn btn-primary" component="clone/button">[[admin/extend/widgets:clone-from]] ...</button>
						<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-menu-end">
							{{{ each templates }}}
							{{{ if !@first }}}
							<li><a class="dropdown-item" href="#">{./template}</a></li>
							{{{ end }}}
							{{{ end }}}
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<div class="card-header">[[admin/extend/widgets:containers.available]]</div>
			<div class="card-body">
				<p>[[admin/extend/widgets:containers.explanation]]</p>
				<div class="available-containers">
					<div class="containers">
						<div class="pointer" style="padding: 20px; border: 1px dotted #dedede; margin-bottom: 20px;" data-container-html=" ">
							[[admin/extend/widgets:containers.none]]
						</div>
						<div class="card card-header p-3 rounded-0 border-0 shadow-none mb-3 pointer" data-container-html='<div class="card card-header p-3 rounded-0 border-0 shadow-none mb-3">\{{body}}</div>'>
							[[admin/extend/widgets:container.well]]
						</div>
						<div class="card card-header rounded-0 border-0 shadow-none p-5 mb-3 pointer" data-container-html='<div class="card card-header rounded-0 border-0 shadow-none p-5 mb-3">\{{body}}</div>'>
							[[admin/extend/widgets:container.jumbotron]]
						</div>
						<div class="card mb-3" data-container-html='<div class="card"><div class="card-body">\{{body}}</div></div>'>
							<div class="card-body pointer">
								[[admin/extend/widgets:container.card]]
							</div>
						</div>
						<div class="card mb-3 pointer" data-container-html='<div class="card"><h5 class="card-header">\{{title}}</h5><div class="card-body">\{{body}}</div></div>'>
							<div class="card-header">
								[[admin/extend/widgets:container.card-header]]
								<div class="float-end color-selector">
									<button data-class="text-bg-primary" class="btn btn-sm btn-primary">&nbsp;&nbsp;</button>
									<button data-class="" class="btn btn-sm btn-secondary">&nbsp;&nbsp;</button>
									<button data-class="text-bg-success" class="btn btn-sm btn-success">&nbsp;&nbsp;</button>
									<button data-class="text-bg-info" class="btn btn-sm btn-info">&nbsp;&nbsp;</button>
									<button data-class="text-bg-warning" class="btn btn-sm btn-warning">&nbsp;&nbsp;</button>
									<button data-class="text-bg-danger" class="btn btn-sm btn-danger">&nbsp;&nbsp;</button>
								</div>
							</div>
							<div class="card-body">
								[[admin/extend/widgets:container.card-body]]
							</div>
						</div>

						<div class="alert alert-info pointer" data-container-html='<div class="alert alert-info">\{{body}}</div>'>
							[[admin/extend/widgets:container.alert]]
							<div class="float-end color-selector">
								<button data-class="alert-success" class="btn btn-sm btn-success">&nbsp;&nbsp;</button>
								<button data-class="alert-info" class="btn btn-sm btn-info">&nbsp;&nbsp;</button>
								<button data-class="alert-warning" class="btn btn-sm btn-warning">&nbsp;&nbsp;</button>
								<button data-class="alert-danger" class="btn btn-sm btn-danger">&nbsp;&nbsp;</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- IMPORT admin/partials/save_button.tpl -->
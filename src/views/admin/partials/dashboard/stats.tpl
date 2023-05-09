<div class="table-responsive mb-3">
	<table class="table table-striped">
		<thead>
			<tr>
				<th></th>
				<th class="text-end">[[admin/dashboard:stats.yesterday]]</th>
				<th class="text-end">[[admin/dashboard:stats.today]]</th>
				<th></th>
				<th class="text-end">[[admin/dashboard:stats.last-week]]</th>
				<th class="text-end">[[admin/dashboard:stats.this-week]]</th>
				<th></th>
				<th class="text-end">[[admin/dashboard:stats.last-month]]</th>
				<th class="text-end">[[admin/dashboard:stats.this-month]]</th>
				<th></th>
				<th class="text-end">[[admin/dashboard:stats.all]]</th>
			</tr>
		</thead>
		<tbody>
			{{{ each stats }}}
			<tr>
				<td>
					<strong>
						{{{ if ./href }}}
							<a href="{./href}">{./name}</a>
						{{{ else }}}
							{./name}
						{{{ end }}}
					</strong>
				</td>
				<td class="text-end formatted-number">{./yesterday}</td>
				<td class="text-end formatted-number">{./today}</td>
				<td class="{./dayTextClass}"><small>{./dayIncrease}%</small></td>

				<td class="text-end formatted-number">{./lastweek}</td>
				<td class="text-end formatted-number">{./thisweek}</td>
				<td class="{./weekTextClass}"><small>{./weekIncrease}%</small></td>

				<td class="text-end formatted-number">{./lastmonth}</td>
				<td class="text-end formatted-number">{./thismonth}</td>
				<td class="{./monthTextClass}"><small>{./monthIncrease}%</small></td>

				<td class="text-end formatted-number">{./alltime}</td>
			</tr>
			{{{ end }}}
		</tbody>
	</table>
</div>
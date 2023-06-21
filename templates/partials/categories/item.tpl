<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix category-{../cid}">
	<meta itemprop="name" content="{../name}">

	<div class="content">
		<div class="icon pull-left" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h2 class="title">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
			<!-- IF !config.hideSubCategories -->
			{function.generateChildrenCategories}
			<!-- ENDIF !config.hideSubCategories -->
		</div>
		<span class="visible-xs pull-right">
			<!-- IF ../teaser.timestampISO -->
			<a class="permalink" href="{../teaser.url}">
				<small class="timeago" title="{../teaser.timestampISO}"></small>
			</a>
			<!-- ENDIF ../teaser.timestampISO -->
		</span>
	</div>

	<!-- IF !../link -->
	<div class="hidden-sm hidden-xs stats">
		<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span>
		<small>[[global:topics]]</small>
	</div>
	<div class="hidden-sm hidden-xs stats">
		<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span>
		<small>[[global:posts]]</small>
	</div>
	<!-- ENDIF !../link -->
</li>

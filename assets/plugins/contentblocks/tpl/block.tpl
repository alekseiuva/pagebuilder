<div class="block" data-config="<?= $block['config'] ?>">
	<div class="change-type">
		<?= $instance->renderTpl( 'tpl/configs_dropdown.tpl', [ 'configs' => $configs ] ); ?> 
	</div>

	<? if ( !empty( $block['id'] ) ) { ?>
		<input type="hidden" name="contentblocks_id" value="<?= $block['id'] ?>">
	<? } ?>

	<div class="controls">
		<a href="#" class="remove" title="Удалить блок"><i class="fa fa-minus-circle"></i></a>
		<a href="#" class="moveup" title="Переместить наверх"><i class="fa fa-arrow-up"></i></a>
		<a href="#" class="movedown" title="Переместить вниз"><i class="fa fa-arrow-down"></i></a>
	</div>

	<div class="fields-list">
		<? foreach ( $configs[ $block['config'] ]['fields'] as $name => $field ) { ?>
			<?= $instance->renderField( $field, $name, isset( $block['values'][$name] ) ? $block['values'][$name] : '' ); ?> 
		<? } ?> 
	</div>

	<div class="controls controls-bottom">
		<a href="#" class="insert" title="Вставить блок"><i class="fa fa-plus-circle"></i></a>
	</div>
</div>
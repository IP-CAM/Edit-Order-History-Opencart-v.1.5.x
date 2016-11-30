<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta charset="UTF-8" />
<title><?php echo $heading_title; ?></title>
<link rel="stylesheet" type="text/css" href="view/stylesheet/stylesheet.css" />
<script type="text/javascript" src="view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
</head>
<body>
<div id="container">
<div id="content" style="min-width:600px;padding:10px;">
<?php if ($error) { ?>
<div class="warning"><?php echo $error; ?></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($result) { ?>
<div class="box" style="margin-bottom:0;">
<div class="heading">
	<h1><?php echo $heading_title; ?></h1>
    <div class="buttons">
		<a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
		<a onclick="location = '<?php echo $delete; ?>';" class="button"><?php echo $button_delete; ?></a>
	</div>
</div>
<div class="content">
<form action="" method="post" enctype="multipart/form-data" id="form">
<table class="form">
	</tr>
		<td><?php echo $entry_date_added; ?></td>
		<td><input type="text" name="date_added" value="<?php echo $date_added; ?>" size="12" class="date" /></td>
	</tr>
	 <tr>
		<td><?php echo $entry_order_status; ?></td>
		<td><select name="order_status_id">
			<?php foreach ($order_statuses as $order_statuses) { ?>
			<?php if ($order_statuses['order_status_id'] == $order_status_id) { ?>
			<option value="<?php echo $order_statuses['order_status_id']; ?>" selected="selected"><?php echo $order_statuses['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $order_statuses['order_status_id']; ?>"><?php echo $order_statuses['name']; ?></option>
			<?php } ?>
			<?php } ?>
		  </select></td>
	</tr>
	<tr>
		<td><?php echo $entry_notify; ?></td>
		<td><?php if ($notify) { ?>
			<input type="checkbox" name="notify" value="1" checked="checked" />
            <?php } else { ?>
			<input type="checkbox" name="notify" value="1" />
            <?php } ?></td>
	</tr>
	<tr>
		<td><?php echo $entry_comment; ?></td>
		<td><textarea name="comment" cols="40" rows="8" style="width: 99%"><?php echo $comment; ?></textarea></td>
	</tr>
	<input type="hidden" name="order_id" value="<?php echo $order_id; ?>" />
</table>
</form>
</div><!-- // .content -->
<?php } ?>
</div><!-- // .box -->
</div><!-- // #content -->
</div><!-- // #container -->
<script type="text/javascript"><!--
$('.date').datepicker({dateFormat: 'yy-mm-dd'});
//--></script>
</body>
<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="box-container">
    <div class="login-content">
      <div class="left">
        <h2><?php echo $text_new_customer; ?></h2>
        <div class="content">
          <p><b><?php echo $text_register; ?></b></p>
          <p><?php echo $text_register_account; ?></p>
          <a href="<?php echo $register; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
      </div>
      <div class="right">
        <h2><?php echo $text_returning_customer; ?></h2>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login">
          <div class="content">
            <p><?php echo $text_i_am_returning_customer; ?></p>
            <b class="padd-form"><?php echo $entry_email; ?></b>
            <input class="q1 margen-bottom" type="text" name="email" value="" />
            
            <b class="padd-form"><?php echo $entry_password; ?></b>
            <input class="q1 margen-bottom" type="password" name="password" value="" />
            <br />
            <div>
              <a class="link-login" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
            </div>
              
            <a onclick="$('#login').submit();" class="button"><span><?php echo $button_login; ?></span></a>
            <?php if ($redirect) { ?>
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
            <?php } ?>
          </div>
        </form>
      </div>
    </div>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>
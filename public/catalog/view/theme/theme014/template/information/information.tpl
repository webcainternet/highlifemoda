<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="box-container">
    <?php echo $description; ?>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button-inf-left"><span><?php echo $button_continue; ?></span></a></div>
    </div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
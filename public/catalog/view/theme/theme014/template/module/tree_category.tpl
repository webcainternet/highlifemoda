<?php ?>
<div class="box cat-colum">
        <div class="box-nav2">
        	<div class="box-heading"><?php echo $heading_title; ?></div>
            <script type="text/javascript">
                <!--
                d = new dTree('d');
                d.add(0,-1,'');
                <?php print $categories_tree;?>
                document.write(d);
                //-->
            </script>
            <script type="text/javascript">
$(function(){
$('.dtree  .dTreeNode').last().addClass('last');
});
</script>


        </div>
        </div>

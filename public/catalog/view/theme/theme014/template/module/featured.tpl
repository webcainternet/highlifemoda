<!--script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight-feat").length){
		$(".maxheight-feat").equalHeights()}
	})
</script-->

<script type="text/javascript">
$(document).ready(function(){
$(function(){
$('.featured  li ').last().addClass('last');
});
}); 
</script>
<div class="wrapper"></div>
<div class="box featured">
 
      <div class="box-content">
         <div class="box-heading"><?php echo $heading_title; ?></div>
        <div class="box-product">
            <ul>
                <?php $i=0; ?>
              <?php foreach ($products as $product) { $i++; ?>
              <?php 
                        if ($i%5==0) {
                            $a='class="first-in-line"';
                        }
                        elseif ($i%4==0) {
                            $a='class="last-in-line"';
                        }
                        else {
                            $a='';
                        }
                    ?>
                        
              <li  <?php echo $a?>>
              	 <?php if ($product['thumb']) { ?>
                <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                <?php } ?>
              	<div class="padd-both">
               
                <div class="name maxheight-feat"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                
                </div>
                <div class="wrapper">
                    <?php if ($product['price']) { ?>
                    <div class="price">
                      <?php echo $product['price']; ?>
                    </div>
                    <?php } ?>
                    <div class="cart">
                        <a  data-id="<?php echo $product['product_id']; ?>;" class="button addToCart"><span><?php echo $button_cart; ?></span></a>
                        
                    </div>
                </div>
              </li>
              <?php } ?>
          </ul>
        </div>
  </div>
</div>

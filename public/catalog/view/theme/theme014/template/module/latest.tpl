<script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight").length){
		$(".maxheight").equalHeights()}
	})
</script>

<div class="wrapper">
    <div class="box new-products">
      
      <div class="box-content">
      	<div class="box-shining">
            <div class="box-heading"><?php echo $heading_title; ?></div>
            <div class="box-product">
                <ul>
                      <?php foreach ($products as $product) { $i++ ?>
                      <?php 
                            if ($i%3==1) {
                                $a='class="first-in-line"';
                            }
                            elseif ($i%3==0) {
                                $a='class="last-in-line"';
                            }
                            else {
                                $a='';
                            }
                        ?>
                        <li <?php echo $a?>>
                        <div class="padd-both">
                        
                            <?php if ($product['thumb']) { ?>
                            <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                            <?php } ?>
                            <?php if ($product['price']) { ?>
                                <div class="price">
                                  <?php if ($product['special']) {echo $product['special'];} else { echo $product['price'];} ?>
                                </div>
                            <?php } ?>
                            <div class="name maxheight"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                            <?php if ($product['description']) {?>
                                <div class="product-description">
                                    <span><?php echo $product['description']; ?></span>
                                </div>
                            <?php }?>
                            
                            
                            <div class="cart">
                            <a data-id="<?php echo $product['product_id']; ?>;" class="button addToCart"><span><?php echo $button_cart; ?></span></a>
                            <a href="<?php echo $product['href']; ?>" class="button details"><span><?php echo $button_details; ?></span></a>
                            </div>
                        </div>
                    </li>
                      <?php } ?>
                    
                </ul>
            </div>
        </div>
      </div>
    </div>
</div> 

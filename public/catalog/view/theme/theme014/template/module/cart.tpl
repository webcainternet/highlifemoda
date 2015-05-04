<div id="cart">
  <div class="heading">
    <a><span class="sc-button"></span> <span class="fr"><h4><?php echo $heading_title; ?></h4><span id="cart-total"><?php echo $text_items; ?></span></span></a>
   
    </div>
  <div class="content">
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table class="cart">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
            </div>
              <span class="quantity">x&nbsp;<?php echo $product['quantity']; ?></span>
              <span class="total"><?php echo $product['total']; ?></span>
              </td>
          <!--td class="quantity">x&nbsp;<?php //echo $product['quantity']; ?></td-->
          <!--td class="total"><?php //echo $product['total']; ?></td-->
          <td class="remove"><span><img src="catalog/view/theme/theme014/image/close.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="$('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?> #cart > *');" /></span></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity">x&nbsp;1</td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
          <td class="remove"><span><img src="catalog/view/theme/theme014/image/close.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="$('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?> #cart > *');" /></span></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div>
      <table class="total">
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td align="right" class="total-right"><b><?php echo $total['title']; ?>:</b></td>
          <td align="left" class="total-left"><span class="t-price"><?php echo $total['text']; ?></div></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkout"><a class="button" href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span></a> <a class="button" href="<?php echo $checkout; ?>"><span><?php echo $text_checkout; ?></span></a></div>
    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
</div>

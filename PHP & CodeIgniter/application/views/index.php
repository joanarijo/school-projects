<section class="highlights">
    <?php foreach($highlights as $highlight):?>

		    <div>
            <a href="destinations/show/<?=$highlight['id'];?>">
				<img src="assets/images/<?=$highlight['image'];?>">
				<div class="overlay">
					<h2><?=$highlight['title'];?></h2>
					<div class="summary"><?=$highlight['summary'];?></div>
					<div class="price">Desde <?=$highlight['price'];?>€</div>
                </div>
            </a>  
            </div>
 
    <?php endforeach;?>

</section>

<section class="trips">
    <?php foreach($destinations as $destination):?>
        <a href="destinations/show/<?=$destination['id'];?>">
			<div>
				<img src="assets/images/<?=$destination['image'];?>">
				<h3><?=$destination['title'];?></h3>
				<div class="summary"><?=$destination['summary'];?></div>
				<div class="price">Desde <?=$destination['price'];?>€</div>
            </div>
        </a>  
    <?php endforeach;?>
		  
</section>
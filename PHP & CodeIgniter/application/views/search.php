<h2>Resultados da Pesquisa</h2>

<section class="trips">
<?php if(!empty($destinations)){ ?>
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
<?php }else{
    echo 'Não existem resultados.';
} ?>
		  
</section>
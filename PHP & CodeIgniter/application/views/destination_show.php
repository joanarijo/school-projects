
		<article>
			<img src="assets/images/<?=$destination['image'];?>">

			<div>
				<h2><?=$destination['title'];?></h2>
				<h3><?=$destination['category'];?></h3>
				<div class="summary"><?=$destination['summary'];?></div>
				<div class="price">Desde <?=$destination['price'];?>€</div>

				<div class="text">
					<p><?=$destination['text'];?></p>
				</div>

		    </div>

		</article>

		<section class="comments">
			<h3>Comentários</h3>

			<div class="comments_contain">

			<?php if(!empty($comments)){ ?>

				<?php foreach($comments as $comment): ?>
					<div class="comment">
						<strong><?=$comment['author'];?></strong>, <?php date("d-m-Y", strtotime($comment['date'])); ?>12 Mar 2019, 16:22h
						<p><?=$comment['comment'];?></p>
					</div>
				<? endforeach;?>

			<?php }else{
						echo 'Não existem comentários.';
			} ?>

			</div>

			<form method="post" action="destinations/post_comment/<?=$destination['id'];?>">

				<input type="text" name="author" placeholder="Nome">
				<textarea name="comment" placeholder="Comentário"></textarea>
				<button>Enviar</button>

			</form>

		</section>

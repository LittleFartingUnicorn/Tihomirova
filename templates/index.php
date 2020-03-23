    <section class="promo">
        <h2 class="promo__title">Нужен стафф для катки?</h2>
        <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
        <ul class="promo__list">
            <?
            foreach ($arrcategory as $value)
            {
            ?>
            <li class="promo__item promo__item--boards"><a class="promo__link" href="pages/all-lots.html"> <?=$value?> </a></li>
            <?
            }
            ?>
            <!--заполните этот список из массива категорий-->
           
        </ul>
    </section>
    <section class="lots">
        <div class="lots__header">
            <h2>Открытые лоты</h2>
        </div>
        <ul class="lots__list">
           <?
           foreach ($products as $key => $value) 
           {
            ?>
             <li class="lots__item lot">
                <div class="lot__image">
                    <img src="<?=$value["src"]?>" width="350" height="260" alt="">
                </div>
                <div class="lot__info">
                    <span class="lot__category"> <?=$value["category"]?> </span>
                    <h3 class="lot__title"><a class="text-link" href="pages/lot.html"> <?=$value["name"]?> </a></h3>
                    <div class="lot__state">
                        <div class="lot__rate">
                            <span class="lot__amount">Стартовая цена</span>
                            <span class="lot__cost"><?=rub($value["price"],true)?> </span>
                        </div>
                        <div class="lot__timer timer">
<<<<<<< HEAD
                            <?=date("H:m:s",$dateandtime)?>
=======
                            12:23
>>>>>>> f325b399de0f63636c9f422b99d6bcdbaf9ed849
                        </div>
                    </div>
                </div>
            </li>
           <?    
           }
           ?>
            <!--заполните этот список из массива с товарами-->
            
        </ul>
    </section>
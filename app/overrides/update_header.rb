Deface::Override.new(:virtual_path => 'spree/shared/_header',
    :name => 'change_header',
    :insert_after => 'figure',
    :text => '<div style="clear:right" > <p>hola mundillo loco</p> </div>
    <div style="background-color:grey;width:100%;display:absolute">
    <script>
		var index = 1;
		window.onload = function(){
			muestraFoto(index);
		}
		function mueve(n){
			muestraFoto(index += n);
		}
		function foto(n){
			muestraFoto(index = n);
		}
		function muestraFoto(n){
			var i;
			var fotos = document.getElementsByClassName("foto");
			var bolitas = document.getElementsByClassName("bolita");
			console.log(bolitas.length);
			if( n > fotos.length) index = 1;
			if( n < 1) index = fotos.length;
			for (var i = 0; i < fotos.length; i++) {
				fotos[i].style.display = "none";
			}
			for (var i = 0; i < bolitas.length; i++) {
				bolitas[i].className = bolitas[i].className.replace("activo","");
			}
			fotos[index-1].style.display = "block";
			bolitas[index-1].className += " activo";
		}
    </script>
    
    <div id="contenedor">
		<div class="foto fade">
			<div class="numero"></div>
			<img src="http://conhuella.es/WebRoot/Store14/Shops/4aa82e8f-2793-44bb-91c3-83ceb6d480c7/5894/76E4/3DA6/45A1/1E4D/0A48/3534/A638/Taza_perro_web_PNG_OK.png" width="100%">
			<div class="texto"></div>	
		</div>

		<div class="foto fade">
			<div class="numero"></div>
			<img src="https://www.brildor.com/blog/wp-content/uploads/2013/12/tazas-personalizadas.jpg" width="100%">
			<div class="texto"></div>	
		</div>

		<div class="foto fade">
			<div class="numero"></div>
			<img src="https://cdn.shopify.com/s/files/1/1650/8369/products/tazas-san-valentn-enamorados-D_NQ_NP_344611-MLA20584144187_022016-F_1024x1024.jpg?v=1514131667" width="100%">
			<div class="texto"></div>	
		</div>
        <div style="text-align:center;font-size:2em;background-color:white">
		<a class="antes" onclick="mueve(-1)">&#10094;</a>
		<a class="despues" onclick="mueve(1)">&#10095;</a>
        </div>
	</div>

	
    
    </div>
    '
    )

class ComentariosController < ApplicationController
	def create
		@pelicula = Pelicula.pelicula(params[:pelicula_id])
		@comentario = @pelicula.comentarios.create(params[:comentario].permit(:name, :body))
		redirect_to pelicula_path(@pelicula)
	end
@pelicula = Pelicula.find(params[:film_id])
		@comentario = @pelicula.comentarios.create(params[:comentario].permit(:name, :body))
		redirect_to pelicula_path(@pelicula)
	end
	def destroy
	@pelicula = Pelicula.find(params[:film_id])
	@comentario = @pelicula.comentarios.find(params[:id])
	@comentario.destroy
	redirect_to peliculas_path(@peliculas)
	
end
end
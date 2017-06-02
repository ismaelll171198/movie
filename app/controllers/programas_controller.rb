class ProgramasController < ApplicationController
	def index
	  @programas = Programa.all
   end
   
   def show
   	@programa = Programa.find(params[:id])
   end
   
   def new
      @programa = Programa.new
   end
   
   def create
      @programa = Programa.new(programa_params)
      if @programa.save
         redirect_to programas_path, :notice => "Se ha guardado el programa!"
      else
         render "new"
      end
   end
   
   def edit
   end
   
   def update
   end
   
   def destroy
   end
   private
      def programa_params
         params.require(:programa).permit(:name, :stars, :main_actor, :year)
      end
end

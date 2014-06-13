class Array


  def self.m(algo)
    #se define el metodo para ser invocado en la clase
  end


  def filtrada(&bloque)

    @bloque = bloque
=begin
#se define un metodo en el singleton_class de la instancia
    def self.<<(elemento)
          bloque = @bloque

          if bloque.call(elemento)
            super(elemento)
          else
            self
          end
    end
=end
     class << self
      #se define un metodo en el singleton_class de la instancia
       def <<(elemento)

         bloque = @bloque

         if bloque.call(elemento)
           super(elemento)
         else
           self
         end

       end
     end

    #se define un metodo en el singleton_class de la instancia
    # self.singleton_class.send(:define_method, :<<) {
    #     |elemento|
    #
    #   if bloque.call(elemento)
    #     super(elemento)
    #   else
    #     self
    #   end
    # }
    #
    self
  end
end

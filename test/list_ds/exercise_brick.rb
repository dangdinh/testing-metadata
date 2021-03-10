require 'gooddata'

module GoodData::Bricks

  class ExerciseBrick < GoodData::Bricks::Brick

    def call(params)
      
      logger = params['GDC_LOGGER']

      logger.info "Start execute script check existing execution parameters"
	    
      existing = false
      params.each_pair do |key, value|
        logger.info "#{key}=#{value}"
        existing = true if key == 'extended_param_test_01' && value == 'extended_param_value_01'
      end
      
      logger.info "Success execute script check existing execution parameters"

    end

  end
end

class LessonController < ApplicationController

	def step1
		render text: "こんにちは、#{param[:name]}さん"
	end

	def step3
		redirect_to action: "step4"
	end

	def step4
		render text: "step4に移動しました。"
	end

	def step5
		flash[:notice] = "step6に移動します"
		redirect_to action: "step6"
	end

	def step6
		render text: flash[:notice]
	end

	def step7
		render text: @message
	end

	private
	def set_message
		@message = "こんにちは"
	end

	def step8
		@price = (2000 * 1.05).floor
	end

	def step9
		@price = 1000
		render text: "step8"
	end

	def step10
		@comment = "<script>alert('危険！')</script>こんにちは。"
	end
	
end


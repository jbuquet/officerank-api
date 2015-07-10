module Authorization

  extend ActiveSupport::Concern

  OFFICE_HEADER_KEY = 'HTTP_OFFICE_ID'

  included do
    before_action :ensure_user

    def current_player
      @current_player
    end

    def current_office
      @current_merchant ||= current_player.offices.find(office_header)
    end
  end

  def ensure_user
    # access_id = ApiAuth.access_id(request)
    # @current_user = Cordis::ApiKey.find_by!(access_id: access_id).user

    @current_player = Player.first
  end

  def office_header
    # request.headers[OFFICE_HEADER_KEY]
    '1'
  end

end

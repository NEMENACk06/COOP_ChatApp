Rails.application.config.session_store :cookie_store, key: "_your_app_session", expire_after: 14.days, same_site: :lax

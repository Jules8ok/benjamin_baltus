class PageController < ApplicationController
  skip_before_action :authenticate_user!, only: [:architecture, :people, :weddings, :mise_en_conformite, :projects, :contact, :homepage, :dysphoria ]

  def homepage
  end

  def architecture
  end

  def people
  end

  def weddings
  end

  def projects
  end

  def dysphoria
  end

  def mise_en_conformite
  end

  def contact
  end

  def administration

  end
end

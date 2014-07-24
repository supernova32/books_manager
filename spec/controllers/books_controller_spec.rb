require 'rails_helper'

describe BooksController do

  describe 'GET index' do
    it 'assigns all books as @books' do
      book = FactoryGirl.create(:book)
      get :index
      expect(assigns(:books)).to eq([book])
    end
  end

  describe 'GET show' do
    it 'assigns the requested book as @book' do
      book = FactoryGirl.create(:book)
      get :show, {:id => book.to_param}
      expect(assigns(:book)).to eq(book)
    end
  end

  describe 'GET new' do
    it 'assigns a new book as @book' do
      get :new
      expect(assigns(:book)).to be_a_new(Book)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested book as @book' do
      book = FactoryGirl.create(:book)
      get :edit, {:id => book.to_param}
      expect(assigns(:book)).to eq(book)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Book' do
        expect {
          post :create, {:book => FactoryGirl.attributes_for(:book)}
        }.to change(Book, :count).by(1)
      end

      it 'assigns a newly created book as @book' do
        post :create, {:book => FactoryGirl.attributes_for(:book)}
        expect(assigns(:book)).to be_a(Book)
        expect(assigns(:book)).to be_persisted
      end

      it 'redirects to the created book' do
        post :create, {:book => FactoryGirl.attributes_for(:book)}
        expect(response).to redirect_to(Book.last)
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) {
        skip('Add a hash of attributes valid for your model')
      }

      it 'updates the requested book' do
        book = FactoryGirl.create(:book)
        put :update, {:id => book.to_param, :book => new_attributes}
        book.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested book as @book' do
        book = FactoryGirl.create(:book)
        put :update, {:id => book.to_param, :book => FactoryGirl.attributes_for(:book)}
        expect(assigns(:book)).to eq(book)
      end

      it 'redirects to the book' do
        book = FactoryGirl.create(:book)
        put :update, {:id => book.to_param, :book => FactoryGirl.attributes_for(:book)}
        expect(response).to redirect_to(book)
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested book' do
      book = FactoryGirl.create(:book)
      expect {
        delete :destroy, {:id => book.to_param}
      }.to change(Book, :count).by(-1)
    end

    it 'redirects to the books list' do
      book = FactoryGirl.create(:book)
      delete :destroy, {:id => book.to_param}
      expect(response).to redirect_to(books_url)
    end
  end

end

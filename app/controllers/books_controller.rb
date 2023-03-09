class BooksController
  def checkout
    user = User.find(params[:user_id])
    book_copy = BookCopy.find(params[:book_copy_id])

    lease = book_copy.leases.create!(user: user, start_on: Date.today, expires_on: Date.today + Lease::TERM)
    redirect_to :root, notice: "#{book_copy.book.title} successfully checked out by #{user.first_name} #{user.last_name}"
  end

  def checkin
    book_copy = BookCopy.find(params[:book_copy_id])
    lease = book_copy.leases.active.first

    lease.update!(end_on: Date.today)

    if lease.end_on > lease.expires_on
      fee = lease.end_on - lease.expires_on * Lease::FEE_PER_DAY
      flash[:warning] = "#{lease.book_copy.book.title} returned late! Charge fee of #{fee}"
    else
      flash[:notice] = "#{lease.book_copy.book.title} returned on time. No fees assessed."
    end
    redirect_to :root
  end
end

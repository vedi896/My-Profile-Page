package com.bookhub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bookhub.dao.BookDAO;
import com.bookhub.model.Book;

@Controller
public class BookController {
	
	@RequestMapping("/")
	public String homeRedirect() {
	    return "redirect:/addBookForm";
	}


    @Autowired
    private BookDAO bookDAO;  // This connects to your Hibernate DAO

    // ✅ To show the form
    @RequestMapping("/addBookForm")
    public String showAddBookForm(Model model) {
        model.addAttribute("book", new Book());
        return "addBook";
    }

    // ✅ To handle form submission
    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public String saveBook(@ModelAttribute("book") Book book) {
        bookDAO.saveBook(book);  // Saves to database using Hibernate
        return "redirect:/viewBooks"; // Redirects to the book list page
    }

    // ✅ To show all books
    @RequestMapping("/viewBooks")
    public String viewBooks(Model model) {
        model.addAttribute("bookList", bookDAO.getAllBooks());
        return "viewBooks";
    }
}

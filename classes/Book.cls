public with sharing class Book {
	public String title;
    public List<Chapter> chapters = new List<Chapter>();
    
    
    public with sharing class Chapter {
        public String title;
        public Integer numberOfPages;

    public Chapter(String chapterTitle, Integer numPages){
        	title = chapterTitle;
        	numberOfPages = numPages;
    	}        
    }
}
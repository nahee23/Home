package com;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class MusicalCrawler {
	 public static class Musical {
	        private String title;
	        private String ing;
	        private String imageUrl;

	        public Musical(String title,String ing, String imageUrl) {
	            this.title = title;
	            this.ing = ing;
	            this.imageUrl = imageUrl;
	        }

	        public String getTitle() {
	            return title;
	        }
	        
	        public String getIng() {
	        	return ing;
	        }

	        public String getImageUrl() {
	            return imageUrl;
	        }
	    }

	    public static List<Musical> getMusicalList() throws Exception {
	        String url = "https://search.naver.com/search.naver?sm=tab_sly.hst&where=nexearch&ssc=tab.nx.all&query=%EA%B3%B5%EC%97%B0%EC%A4%91+%EB%AE%A4%EC%A7%80%EC%BB%AC&oquery=%EA%B9%83%ED%97%88%EB%B8%8C+%ED%86%A0%ED%81%B0&tqi=i0bv3wqVN8VssDZUn3hssssssjC-311115&acr=1";
	        Document doc = Jsoup.connect(url).get();

	        List<Musical> musicals = new ArrayList<>();
	        Elements elements = doc.select(".list_image_info"); // 적합한 CSS 셀렉터로 수정

	        for (Element element : elements) {
	            String title = element.select(".name.line_3").text(); // 제목 클래스명 수정 필요
	            String ing = element.select(".this_text").text();
	            String imageUrl = element.select(".thumb img").attr("src"); // 이미지 URL 클래스명 수정 필요
	            musicals.add(new Musical(title, ing, imageUrl));
	        }

	        return musicals;
	    }
	    
	    public static void main(String[] args) throws Exception {
	        List<Musical> musicals = getMusicalList();
	        for (Musical musical : musicals) {
	            System.out.println("제목: " + musical.getTitle());
	            System.out.println("상태: " + musical.getIng());
	            System.out.println("이미지 URL: " + musical.getImageUrl());
	            System.out.println("-------------------------");
	        }
	    } 

}

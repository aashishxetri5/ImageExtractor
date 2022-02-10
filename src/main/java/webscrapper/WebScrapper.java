/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webscrapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/**
 *
 * @author Aashish Katwal
 */
public class WebScrapper {

    public List<String> getAllImgs(String siteUrl) {

        List<String> validSourceUrls = new ArrayList<>();

        try {
            Document doc = Jsoup.connect(siteUrl).get();

            for (Element elem : doc.select("img[src]")) {
                String srcUrl = elem.attr("src");
//                if (srcUrl.isBlack()) {
                if (srcUrl.length() > 0) {
                    if (validateSrcUrl(srcUrl)) {
                        if (srcUrl.contains("?")) {
                            validSourceUrls.add(srcUrl.substring(0, srcUrl.indexOf('?')));
                        } else {
                            validSourceUrls.add(srcUrl);
                        }
                    }
                }
            }
        } catch (IOException ex) {
            Logger.getLogger(WebScrapper.class.getName()).log(Level.SEVERE, null, ex);
        }

        return validSourceUrls;
    }

    public boolean validateSrcUrl(String url) {
        boolean isValid = false;
        List<String> validUrlItems = new ArrayList<>();
        validUrlItems.add("jpg");
        validUrlItems.add("png");
        validUrlItems.add("jpeg");
        validUrlItems.add("svg");
        validUrlItems.add("gif");

        if (validUrlItems.contains(url.split("\\.")[url.split("\\.").length - 1]) || url.contains(".github")) {
            isValid = true;
        }
        return isValid;
    }
}

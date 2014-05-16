# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    templateData:
        getPreparedTitle: -> if @document.title then "#{@document.title} - #{@site.title}" else @site.title
        getPreparedDescription: -> @document.description or @site.description
        getPreparedKeywords: -> @site.keywords.concat(@document.keywords or []).join(', ')
        site:
            url: "https://www.freightforge.com"
            appUrl: "https://app.freightforge.com"
            title: "FreightForge"
            analyticsKey: "UA-12758174-3"
            description: """
                When your website appears in search results in say Google, the text here will be shown underneath your website's title.
                """
            keywords: """
                place, your, website, keywoards, here, keep, them, related, to, the, content, of, your, website
                """
            social:
                googleplus: "https://plus.google.com/+Freightforge"
                twitter: "https://twitter.com/freightforge"
                vimeo: "https://vimeo.com/freightforge"
                github: "https://github.com/freightforge"
    environments:
        static:
            plugins:
                cleanurls:
                    static: true
        development:
            templateData:
                site:
                    url: "http://localhost:9778"
                    appUrl: "https://localhost:8443"
}

# Export the DocPad Configuration
module.exports = docpadConfig
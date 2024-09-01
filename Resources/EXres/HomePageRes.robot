*** Settings ***
Library     AppiumLibrary
Resource    ../AAres/LoginRes.robot

*** Variables ***
#HOME PAGE APP BAR LAYOUT LITE
${BT-SWITCH-MODE-LITE}                       id.co.bitcoin.home_lite:id/ivSwitchLite
${BT-SEARCH-HOME-LITE}                       id.co.bitcoin.home_lite:id/ivSearch
${BT-NOTIF-ICON-LITE}                        id.co.bitcoin.home_lite:id/ivNotification
${BT-PROFILE-ICON-LITE}                      id.co.bitcoin.home_lite:id/ivProfileIcon
${LABEL-EST-ASSET-LITE}                      id.co.bitcoin.home_lite:id/titleAsset
${LABEL-EST-ASSET-TITLE-LITE-ENG}            Estimated Asset Value
${TOOLTIP-EST-ASSET-LITE}                    id.co.bitcoin.home_lite:id/ivAssetInfo
${EST-ASSET-NOMINAL-ICON-EYE-LITE}           id.co.bitcoin.home_lite:id/tvAsset

#HOME PAGE SWIPE REFRESH LITE: ANNOUNCEMENT
${ANNOUNCEMENT-LAYOUT-LITE}                  id.co.bitcoin.home_lite:id/vBgAnnouncement
${ANNOUNCEMENT-ICON-LITE}                    id.co.bitcoin.home_lite:id/ivAnnouncement
${ANNOUNCEMENT-RUNNING-TEXT-LITE}            id.co.bitcoin.home_lite:id/tvInformation

#HOME PAGE SWIPE REFRESH LITE: KEY FEATURE
${KEY-FEATURE-ICON-DCA-LITE}                 (//android.view.ViewGroup[@resource-id="id.co.bitcoin.home_lite:id/clRoot"])[1]
${KEY-FEATURE-TITTLE-DCA-LITE-ENG}           Recurring
${KEY-FEATURE-ICON-ACADEMY-LITE}             (//android.view.ViewGroup[@resource-id="id.co.bitcoin.home_lite:id/clRoot"])[2]
${KEY-FEATURE-TITTLE-ACADEMY-LITE-ENG}       Academy
${KEY-FEATURE-ICON-LIVECHAT-LITE}            (//android.view.ViewGroup[@resource-id="id.co.bitcoin.home_lite:id/clRoot"])[3]
${KEY-FEATURE-TITTLE-LIVECHAT-LITE-ENG}      Live Chat
${KEY-FEATURE-CHATROOM-LITE}                 id.co.bitcoin.home_lite:id/clChatroom

#HOME PAGE SWIPE REFRESH LITE: FAVORITE COIN
${FAV-COIN-TITLE-ENG-LITE}                   id.co.bitcoin.home_lite:id/tvTitleFavoriteCoin
${VIEW-MORE-FAV-COIN-LITE}                   id.co.bitcoin.home_lite:id/tvFavoriteShowAll

#HOME PAGE SWIPE REFRESH LITE: TRENDING COIN
${TRENDING-COIN-TITLE-LITE-ENG}              id.co.bitcoin.home_lite:id/tvTitleTrendingCoin
${TRENDING-COIN-RECYCLEVIEW-LITE}            id.co.bitcoin.home_lite:id/rvTrendingCoin
${TRENDING-COIN-ROW-1-LITE}                  (//android.view.ViewGroup[@resource-id="id.co.bitcoin.home_lite:id/layoutHomeCoinPrice"])[1]

#HOME PAGE SWIPE REFRESH LITE: INDODAX INFO
${INDODAX-INFO-HEADER-TITLE-LITE}            id.co.bitcoin.home_lite:id/tvAnnouncementSectionTitle
${INDODAX-INFO-VIEWMORE-LITE}                id.co.bitcoin.home_lite:id/tvAnnouncementShowAll
${INDODA-INFO-RECYCLEVIEW-LITE}              id.co.bitcoin.home_lite:id/rvNews
${INDODA-INFO-ROW-LITE}                      id.co.bitcoin.home_lite:id/clNews
${INDODA-INFO-ROW-1-LITE}                    (//android.view.ViewGroup[@resource-id="id.co.bitcoin.home_lite:id/clNews"])[1]

#HOME PAGE SWIPE REFRESH LITE: NEWS CRYPTO
${NEWS-SECTION-TITLE-LITE}                   id.co.bitcoin.home_lite:id/tvNewsSectionTitle
${NEWS-SECTION-VIEWMORE-LITE}                id.co.bitcoin.home_lite:id/tvNewsShowAll
${NEWS-SECTION-LIST-LITE}                    id.co.bitcoin.home_lite:id/fcvNews
${NEWS-SECTION-ROW-1-LITE}                   //androidx.recyclerview.widget.RecyclerView[@resource-id="id.co.bitcoin:id/rvNews"]/android.view.ViewGroup[1]
${NEWS-ROW-TITLE-LITE}                       id.co.bitcoin:id/tvTitle
${NEWS-ROW-THUMBNAIL-LITE}                   id.co.bitcoin:id/ivCover
${NEWS-ROW-TAG-LITE}                         id.co.bitcoin:id/llTag
${NEWS-ROW-COIN-TAG-LITE}                    id.co.bitcoin:id/ivTagIcon
${NEWS-ROW-SOURCE-TAG-LITE}                  id.co.bitcoin:id/tvSourceName
${NEWS-ROW-TIMESTAMP-TAG-LITE}               id.co.bitcoin:id/tvCreatedAt

#BOTTOM MENU LITE
${BOTTOM-MENU-HOME-LITE}                     id.co.bitcoin.main_lite:id/menu_home
${BOTTOM-MENU-MARKET-LITE}                   id.co.bitcoin.main_lite:id/menu_market
${BOTTOM-MENU-WALLET-LITE}                   id.co.bitcoin.main_lite:id/menu_wallet

*** Keywords ***




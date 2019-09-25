def test_root_path(client):
   
    
    reponse = client.get('/page_principale', data=None, headers=None)
    assert reponse.status_code == 200

    reponse = client.get('/page_organiser_un_match', data=None, headers=None)
    assert reponse.status_code == 302

    reponse = client.get('/page_global_matchs', data=None, headers=None)
    assert reponse.status_code == 200

    reponse = client.get('/page_liste_groupes', data=None, headers=None)
    assert reponse.status_code == 200

    reponse = client.get('/page_notifications', data=None, headers=None)
    assert reponse.status_code == 200

    reponse = client.get('/page_profil', data=None, headers=None)
    assert reponse.status_code == 200





    # assert reponse.body.content.match(regexp)

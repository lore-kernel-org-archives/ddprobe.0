Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A9129A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 16:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655395559;
	h=To:Subject:From:Message-Id:Date;
	bh=FBWsGYM+E/NtGtwpcUIJny4ZMzGzInz5wl9VuEWeuLU=;
	b=LUaie0HYPuaxT5lmSfdzDdqikmbykoWuO9d8NODwDhe0EqaS4nm+AC1cJKzJWfFy
	R5n1dahEYKYx+HUZRV+b4OCTuIEh3afA5x9+yD0Jm6CkOlxLic1n+pTG9EYFZ6gVmLO
	KRDpv/xyg6zYDrIf+rCADot30fN8z1EG3Q3TX4TA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655395559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FBWsGYM+E/NtGtwpcUIJny4ZMzGzInz5wl9VuEWeuLU=;
	b=NYMVv17Gf5tMPA4OYZqhURE+x4u9ZW4Bfs39LRDrHh0v2N+0KP6ABsfOdzNJEym6
	nd44pGnXOjQT48XIkGgmJocrkgnjP7GwVIWFDcy4AOOKAWd4X3JAmF2GbP5lrfR4nmg
	fzLcHkZE0RAu9NRHLccuqwf4OG5+1bcH3ERdj7lo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d43a760-98451585-3915-4a97-9442-ac973df36598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d8166540eb5bf3259a24a6ffbb8703267df83a5f386d9f47e01746e8b499fed
Date: Thu, 16 Jun 2022 16:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655395559

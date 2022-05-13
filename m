Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EEE7A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 19:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652470679;
	h=To:Subject:From:Message-Id:Date;
	bh=rg1JvUu3319RSpcJfNxpjWgtep1llpaFjgK+KtEaZr8=;
	b=jQD3fazHqRup0TgIkeiaq3OQ8JKTnlyRClsBUu+ASKms8QuOLnS8oJ+7eJxpNoj3
	8RFTqAg64nfJ2okt7asJA14Civ607303+LCQmArsFZ8RD8H2D6tgaawRto5rO2bJptw
	Ouwoz0f0rCb2o1sDGtHSRaY88Y96zkIOz8eSKz+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652470679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rg1JvUu3319RSpcJfNxpjWgtep1llpaFjgK+KtEaZr8=;
	b=fkDFnYVC9+aJriCl5LigbysEe6sOLm8XC4jnMqFeM/k0Rfh3UJBOIV1O/QhE12iv
	J//Eu0CjbmcB87HpsgLtTZMwrroVXNh0/4cPT7dQAP6ZDmPOWdL+MDKkMQ4R3ny4Mpv
	Dp+tcPcQXSa0S/jrnxr6fGHLlBr0bCqu+yEiQW1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180beed8705-23eb5196-e742-4157-89f7-7e08cc035754-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34428b52b80bc32a3d104d42058f23f0eaaa7d5249f054091a63b6cbaaef6037
Date: Fri, 13 May 2022 19:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652470679

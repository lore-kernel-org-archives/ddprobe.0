Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A087F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659443453;
	h=To:Subject:From:Message-Id:Date;
	bh=T+zPaTgxTYCt4Sl0HHwJt3/NvFjepu34g/EniZV+irw=;
	b=DIGiaYEsG/gkFuSax1SstKTBh8bEbBKcEem2DQHf0ddZFWNoA1L8WlOyf1Y7sVZI
	XF8EgukxEwRsdhwOWIDbccwoqwliRLRKHJMSpsenotbE2Hh4MndanbsnTTIUSAeeLHB
	k31J4/E16urvwrZmXtcz2P2CO9nXLe/YOUHXPnZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659443453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T+zPaTgxTYCt4Sl0HHwJt3/NvFjepu34g/EniZV+irw=;
	b=C5OY5Vb9TjWZ4hy0pqYm/tfTpyVkqqLRsXRaD+dM9sLbcg/ZbungAeA7wroKuUHb
	zPL+cG0mUe4Nog42LtW/IhB2CQYjE0hfVy6MDBw3Ye00woB/bdz6d6G50YZR9dizvVA
	tx9yAZKeTtNSsGRJzIszjip1fXLByxsGTyJ9pa7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e899a8e-8175eae1-fa29-46a2-a960-2ea36220d165-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4d246f30d8309cf9035d2906bb644800768fc6ac9fd40924e8e89430a0d8178
Date: Tue, 2 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659443452

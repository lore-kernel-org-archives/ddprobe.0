Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466537F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659351652;
	h=To:Subject:From:Message-Id:Date;
	bh=vpYxuNXCikfrl3BRVsan6qx+YjhzeRAuPRsfIstYI44=;
	b=IsoTwgO1ydB/wuzBT0cpK9rdEZbWDerZYf+Ejsr7+PjjlVI0Ugk6owUxVbtD4O8W
	7eM95+5zuxjWstFW7TT6WZdR4lTiHIyTpr7jUUxX75Kb2aoUqEsKE8d7KVpCojKo/9a
	AenmQOIuM6dqJHx7SRYnUIl7V0pTxnDkoZmGDZXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659351652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vpYxuNXCikfrl3BRVsan6qx+YjhzeRAuPRsfIstYI44=;
	b=dJy9gQev9+9/8cV9nFKtHgHF1w2RO42BxCyXJXy8g7ydrBqeacykqVyFEIoXUMYX
	YP4yeXbmQfzYBsE4p2ZRDpaDRutcXi27P/vMZdLvdFcf2QE7GkJEbNMtcSVVyB3y/q2
	Fpnbf/BnDmu/35yWPCNHBH1JNDDEjksoU963q1pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825910d895-8fc104a6-8bba-4386-9817-f4222f8fb6e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a2dcdd3369dc50f67dcef27286c1be5d286b25a9335dcd78a72c3a33bfbbe95
Date: Mon, 1 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659351652

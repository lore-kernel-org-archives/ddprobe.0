Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243A27F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 01:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653700199;
	h=To:Subject:From:Message-Id:Date;
	bh=ndWlRUOBFb2dbVZhug7iX1kCJRZM1Rh+dIekQaWplHA=;
	b=j/gcs9sq/N73S+NRhc9a2ODq4L/r+ZktzhgPuUgkAVYD99QRuHnVff3o8DB/LPYF
	KQLxxYKAS7fIPnelNVWauj41DPfC0/qNUTo9Kb8vGvIBBUrpXvRCDvck5q32YFwAD0N
	IYjcXuUyQwUwTp25Bm1HytIhcL55ConFz6ONdBTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653700199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ndWlRUOBFb2dbVZhug7iX1kCJRZM1Rh+dIekQaWplHA=;
	b=P1YQJo5WJ7g8RGl4lnF3vJFh4KaFDKgPrqj4mKRPyzPJ1iJGWXE7ki+IUJTFnfoF
	909Ga+Hq04tBEflatTWUFX+GcaxwT4/SKz5D+ldcD9xS11p+/KnV20wsjncQVIesHGU
	/QnRmf5c/wIdzP0VD96XTRnOgaJ9sbbSmdHp28zI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108368380-23980ffa-9138-4683-975f-b4d8c935ab36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0db286296c27100968d8f139152a5e0926b6f26f907c978d0dc2002bc31a9cd3
Date: Sat, 28 May 2022 01:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653700199

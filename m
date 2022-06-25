Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C8A15A7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656127012;
	h=To:Subject:From:Message-Id:Date;
	bh=1KUKn1P/7DHrgsuPJqfacpls1lBO4MoxGE9FJYmCSMk=;
	b=ij1SbVzwRZnOJEJPASarDZQ7dK3Ju6Dx0TX3xi0SBK9jNZoaBxw6/eJlE4LrZwlE
	YUp/yh4ScdEGoNHllolAEC3ndjkGMaECQXu7ubPNBK/hOnfwuvOvnosZF62SlNjQYfs
	yEV0JTToSiF6kpSACuLqbvk7lwmlyumurkjsyMuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656127012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1KUKn1P/7DHrgsuPJqfacpls1lBO4MoxGE9FJYmCSMk=;
	b=WJhYhDo44QpmjtG9xIN2VsFFDefRDFnfXrLiAT0lQPDjFnx9hjVGqiqh5LV8kYfw
	ZndePglG4mcmYn5531qfat76ebSSR3PTFZ69XEBFlJcYpbei1fyoB8+0IgSjslGXGYT
	0QDVo0F3JagRpNwzfOxbW6TGQBgq5KId1nuzmS7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198dcbdd9-c5930cce-5429-4503-986f-43c9e724b4df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81d388c618751d6baf0da1b50a1e2892ecdced6df7a15fc771b8192a6350375a
Date: Sat, 25 Jun 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656127012

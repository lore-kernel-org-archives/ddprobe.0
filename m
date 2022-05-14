Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F132936C
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 03:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652500499;
	h=To:Subject:From:Message-Id:Date;
	bh=DzpCgf3RagUrZwLDn9A61gUsq1QLT4JMWJuZzszvtdQ=;
	b=UHq5UqxwSNX2YBT3kuKzPuWPEt+R79MI34JFuTG6Uf24ZmBKCX1KxGdRkQxOZ06W
	lNf3WBZ2vCoVPuQ7P/YecEHiCBsOAysCKW3g1kaO+ZWS0hXCc3ddA7Fx49AJQrs1xim
	nosRCo7N7UmV147NGu7F2yyqEVWxdoozP84xGBDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652500499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DzpCgf3RagUrZwLDn9A61gUsq1QLT4JMWJuZzszvtdQ=;
	b=bQR8MmM0efhbEn4t8wF3mHpbkuaa9/SJCA6wynjeJgyZJL1geZ/6GmdTkPi4EOXz
	+ei7O/pkABEkfmKNvq7yaLLq6CQecmMOSvvEOTiL/DsNRcHsIGwDPb90Scnu9lJvD2A
	/ahrQdatux5eeMobmIXg2bMzYlIJBVXOuYHdK7a4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c0b48b62-7ffe8a58-f7c9-4d61-bbbc-cf9ca5ba04e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a91a0b1fe451870f79b30012fd19b418a91dfc7043e777876ffebdd48a9a9fd
Date: Sat, 14 May 2022 03:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652500499

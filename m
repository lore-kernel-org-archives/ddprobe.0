Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2077B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 21:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653859799;
	h=To:Subject:From:Message-Id:Date;
	bh=i1UWJKfQSbVqXcrVPowTQsfDTw96uTGMZA1m2z73o1U=;
	b=VvyEhztoT2FijFe/x7lDIICC4KCf6LZc0UhqhYSgSRq/GEx7Pcz5ZxJGXH+7DxVJ
	sZgY4/9AzyJ/teH+ZBpeQhIdk+5WxQTsCwPTVOTU+7u3+KsulDiNkfBunuddahLkkOA
	Q6FdRXnbqWK8gAMNMw2NZPyfEAwIb4ErT1/HlSRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653859799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i1UWJKfQSbVqXcrVPowTQsfDTw96uTGMZA1m2z73o1U=;
	b=IU8PV+hUIqfOkPEbmoWY1HGUDwjxxa5OJjRP2Qbv7+tGwDihjBKv9C/WNCHPS80h
	KJGRctJp1VtjFycMF1Y48ZNV19u/uvu77Nim+dJKwywVSy96b8X5ebVjksezqBhNK+x
	xPRJiUd4xJ72JIxOQ2uy6FGVZ5eoGlJAZ3i51TqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018111b9d0fc-2831cb85-1f4a-4ede-bc92-3b225ccf9dce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05e3ef10cca5efa6203f80461d1ca0e331ed2b8b3045a6d66269475afa945cd9
Date: Sun, 29 May 2022 21:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653859799

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECF07E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654017839;
	h=To:Subject:From:Message-Id:Date;
	bh=10A2s1XugRaUt6yP/gsBXvxFUX+RVC36Clcs4QLOjlg=;
	b=aCYUtwcrUsC1vqunv/oeoWXJ7f2e+UrylU/zIIgqFraC/oQ+8TftHhWUjiyuY+yT
	NQO5CEE1jj1lC8VhfzF05hvLzaL7W+FzalXFQyJ6Xw1slqdm9TGJSR1udWGRioKbrrx
	/muHfc+HtmcJwZ1d2mYQTNbBt31ufl/+PRhnNIMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654017839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=10A2s1XugRaUt6yP/gsBXvxFUX+RVC36Clcs4QLOjlg=;
	b=HsL8zoGuVsctDUKxpsGPvaGfhQIrJ/rcEfxXVq+Rnte7XslbDZ4KLs/hnT5PeVsq
	4eviQgjKRCUpTe9HcZZJ43doK6cXkbR1b7nId76J26sxDZ+Ugxc7IWybb9FzNZlYMId
	XE2LjjYu2LmF2JaSvrynMa9PST8VLDhkY+5iQJj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b2550a9-8d25e2a9-0ee9-47d6-8072-08276c37fd6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d39a410104008ee22f73947db2b136bebbe3e5ea2aa69d676a6e658535bf10f5
Date: Tue, 31 May 2022 17:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654017839

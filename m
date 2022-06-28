Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D3F362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656398812;
	h=To:Subject:From:Message-Id:Date;
	bh=G/zLA9xjb8aOfsE1VvyQsHOUDJd2FsiTNjxSQIgxYU4=;
	b=WrXrZoHYvtuuEeo6LZhyrMH4rCphGeqc/bLvLNWoy4wH5vbMAAzB8Oa46Jn0x8my
	1XRTDPBGp+shzvP9BBWl4s1gmmpbGZ2jmKSJBn4KFype9jRqC21pwDcqR9sKugwbZ1q
	xzYyjvtjvQajjI4GMHfg4cbqygCasMlB+726bNiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656398812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G/zLA9xjb8aOfsE1VvyQsHOUDJd2FsiTNjxSQIgxYU4=;
	b=BcrdYkw0tCkNlLuoXYHCSZ94nfNfKQDkBm3L7p4jYUEsDi3/T1KHD/CYBxaXZbeK
	A7xRmTTTKtl0ryvQzItGN/EY1sOnHgqFEZSFJvhRKCO5AWFhjFYy99vTBUSi3tCghgJ
	bW+5pKBQ0o7Qz6IBJwy1k5EN/B07nlWC3C0JPFCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9101467-cb53c295-60ff-48cb-96e4-26dd4e5481b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bf6829c9ee3d94cb79e03bcd0d899bda115c2ec79cc24b07c23f0dc95f4bc03
Date: Tue, 28 Jun 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656398812

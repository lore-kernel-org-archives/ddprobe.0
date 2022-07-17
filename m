Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15CE259C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658092612;
	h=To:Subject:From:Message-Id:Date;
	bh=TDreUX6UhZl7fObJZzUttD/AI2BSJ5kqcsIe/CYl8GE=;
	b=RqEohGqzTbxFj3OzStsgv2adRnKFn4OHyqEtsAsmPW/ZcZT68rizwWphdSpSQc0s
	Px1ViwoLJrf8K916R3Bw5QLSg2kCop94C/yc4uQ5gVLsDhz4WTQWPYbbF2yL91yEcAW
	QKKsKYpbrxb5XFtb/JSQj4dhLTxQ/48XDIglLpR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658092612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TDreUX6UhZl7fObJZzUttD/AI2BSJ5kqcsIe/CYl8GE=;
	b=YgFdoaXNbCGELYSEYNN+cRVweG2lAolc/i/dgAW25rdWkdIuxpUHCshiAY8+5GaJ
	JZxG5iNWiqEwxnT8rieJezDMQfRqCdvppDngEFGXWirAStTGd/U4baJXV1TSlr0HCgf
	yWAHpNb92T5GlEC2CMbDff0xoKGoKhqmV0+S1BPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820e056b43-f4e83875-f310-4ee8-a913-13cef3030078-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa5611c07ec3c21d0419ce0c7931ac3103efb37fe33952f0f36970a00ba88c43
Date: Sun, 17 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658092612

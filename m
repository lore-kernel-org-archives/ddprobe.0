Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D0A7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 06:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654497299;
	h=To:Subject:From:Message-Id:Date;
	bh=HQrEsc4eObeRLiaOSwC1bT34x45lfiw0tkknX4eY4p4=;
	b=RgLF27Eavka7b7XmgUtPUQrmd56H5gijKU3bnNUntaYNVClLJ8s0enlBTDiq+vA8
	9P+gV5dmc3SodiUAJtD/HEgoXLF7jRPoLTBhR571HWJaR4W4AyKgriw1TshxwhisbHk
	pRaHwEOeZ5/Rb7ZCYITs8ZP6xzSk8eXOjAKPQjg8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654497299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HQrEsc4eObeRLiaOSwC1bT34x45lfiw0tkknX4eY4p4=;
	b=SKvpLIEzdYzwxBsJpd1Wxl5jgDgw9CWyzC7M6j9mytyUjtW8TzAs9IB7WmHIZSru
	nuGOaoS14bztH1ldIc1OH9jj6aRRW1DdnF5+dAnLVvJnPKXkYqMIROkXhfwTmxvRL4A
	lLQ9387WpAmH3LkfjnNfLyS9Zv7P8chOy9qKO8Kc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137b94b77-b33727e0-bbc1-4b9a-a630-5fb8dc5d4811-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d22f435be0ff0f444d6159c30ecba7121f900c35f7cde6b0925e28c4bb07130
Date: Mon, 6 Jun 2022 06:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654497299

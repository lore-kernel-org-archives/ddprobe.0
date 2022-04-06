Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2408B7E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 05:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649223778;
	h=To:Subject:From:Message-Id:Date;
	bh=E61I90BLq1rWEwSmDZErpoonqY62YdPbAA2a5TsrqxU=;
	b=jJv6smJy5oQiyu/ZvCMQ5L+3JYi/NKRU7LIjHNm5p1GawnZrzm0IIVlDJKIlfsBb
	W7h5LTSKCWjAFMCNKvTAyuYkDjqhP8r3KjIrtui1FEFx6uxqTMQGADRTcKXzHab0qkZ
	urx9RNWVYflH98Pv1rAq1z2WJlZZA8REIsQNNUkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649223778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E61I90BLq1rWEwSmDZErpoonqY62YdPbAA2a5TsrqxU=;
	b=LEscPmviT6ycHRVzDiuh0BqEPMznijb+7U61TWDHezPTo1b/QqBUQbCf6k/RiLYY
	OfT6h2Qr0Wv6GA9k35jVd1rfTZgknd2O4WbMUdPdPVr0PrA0T4HtjxY6WgopYN/UZOs
	1wWK5QrckM+qxnKmwt0hSWZ3HHEUkUEQtcgmzI1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd65c00f-dd0ede7a-5599-4982-b53a-ad0e437dbcdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78a9b0e4cd0e531dfa9d9c8578feeacae94fcade7b6967f98ff3fcb9096c4989
Date: Wed, 6 Apr 2022 05:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649223778

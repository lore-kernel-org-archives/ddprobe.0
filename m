Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB0120E8
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 01:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644628208;
	h=To:Subject:From:Message-Id:Date;
	bh=ACheaBE1wDfCHcyhZ73FR9iUcdbJQpoZmgqtdwPrbD8=;
	b=DIy5VT0lNNSUbZgo1AUBULVDcknO9yuBU1U9TAxBTuIL+BR5u6/zXGpkqqovuhpj
	sshlgOrRiwz2ufrlQ/rOKcNz76JFIw84m5FuwhtnbwJYPO7F80tJiQni8LFyg6AUT4I
	mYzRFXzpwv+6VtrRg2Ep8xfdVyTkjdNbV1R8ZkNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644628208;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACheaBE1wDfCHcyhZ73FR9iUcdbJQpoZmgqtdwPrbD8=;
	b=iYfjP+hR1tXX30PpljjfEWpJHwRMNeiWWj5+xCiCqSA+308szZunuAlcC6cjQzez
	hNTGwo/2qhRRJQTwomcO2RYXpfYma+/IVxBAAP38qEbdHggk9HuuIp7e8qsuoCS8Ghm
	lGH6C9OV7wpRj6PvEVPliib+zkaCS1E5GYL9Qdqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb7ae8a5-656b8704-a88a-4781-9c74-29b10394e613-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72bf1e910ad121ea944830137f3e21bbeade0cc6687fbc52dfc0e210c76634c8
Date: Sat, 12 Feb 2022 01:10:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644628207

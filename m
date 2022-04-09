Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F312DA22
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 16:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649520538;
	h=To:Subject:From:Message-Id:Date;
	bh=S17rLlA9z2Hn1MzqAGHGKn/+wscepHJMImddllIt3P4=;
	b=eLS72MAof39MyaJhMKXJHtMBPCXmjO1vd9uN9prsawmwcOXJXcxUAXmB0Hpspz39
	d9Yoo1HcJfq342OK97aIgL75Wt5BlGkMtidcifsyjAg6GIWFISJD8Iosnv74Hr3WbcZ
	n3KVWazntk5JIVA1LKBGNys8bNK7xuARrJ3w6TME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649520538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S17rLlA9z2Hn1MzqAGHGKn/+wscepHJMImddllIt3P4=;
	b=M3mCFHQ1xaSUxkbfxgkTx0AiggPuRbzM0nizHRlAg0w5Oo0RTap62PJG7V3wHc21
	UePeX8JXiwyFhgEE8fHY//RiDSOblCv4BMUgmAsVPVIpjO4qCEeKTBLhdo4/kK8djLk
	cQBmY7UFuTyfcYGtJ4h44V+LrwB1jdufMbioTvi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f15f2ad-31edfcbe-933d-490d-9206-3a5d19fe478c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64b28b75de3f88c096df73a75c8f8111a53eeb00d3e458eb576c136fc9e87d10
Date: Sat, 9 Apr 2022 16:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649520538

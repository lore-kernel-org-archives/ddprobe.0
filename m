Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0121B71
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646523085;
	h=To:Subject:From:Message-Id:Date;
	bh=wi14dpDqWcsPlO3ENObDfc4RyAXDf6U4ldfRwBCMmDA=;
	b=DmwX4/soJIkC4uZV0O/YZPYNm+HOFPlwe5U/fnimKv0qorTR5ABbf8D1/d/jMVJj
	LdnxG+fDjvi7sfktY4HuyL0u8XcusrqLOCa/bG7+nky2/OX5FsF7SYyjv27W59X3yCe
	S1Fbf6ev8D5IYwtvYfuOF4NBeiAm6RW+Cg/pA4yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646523085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wi14dpDqWcsPlO3ENObDfc4RyAXDf6U4ldfRwBCMmDA=;
	b=ZivsdwowGgjWNVlOE8EWBu1CCV0i/8HIs85eBa4q9JfQsJpeRvKoWOrMKhThXfme
	A9CQ79tsode6N+H9TidIrQblygvMo2+ukyKVzxG73kqJG6XQRu2SDIxNTw1p78LMRmR
	KOYXKZCTS3V5lfc1nBfnoB/HzpB5VCQ+Nwl/ryYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c6c6fd6-ede5ed3d-e647-4fec-bf91-eeb595f9c514-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c73d84a9ee4f87c28b7ee33bb944cf9630a01f3189e24de40c117374285d63b0
Date: Sat, 5 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646523084

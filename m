Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D847E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645517785;
	h=To:Subject:From:Message-Id:Date;
	bh=n26hC1ssGTWavG8ZCAzcM29tOq2VkOH6kEgSzRRWdzE=;
	b=DDMyM7QKK1bt1XFDI1mMiwNwifnqtMMpN/H4NODpY8msc3fcGC8/YPta6TVMMo+q
	MQ9mgnB8d01e7lKONSIdgDlKtQ4iBx42a1EJN0MdSevWDy91W1dJEs5TMW+AaGUq+u2
	sOF4KgFshNJnvpa7iNB35PS9ZdG/DW3nAO8CIyvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645517785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n26hC1ssGTWavG8ZCAzcM29tOq2VkOH6kEgSzRRWdzE=;
	b=d5D7fSS/6CSs4VAbtOd8XLZZ9YGh7NS1YTe6UyUP/Yx/0gYXKQHoYqjV3Txc7D++
	g4xqnEZ1PuJn2GTRlxABGCqbUiFQMFwllg5siSB9OK5+X/NXTNArSoIHIO58by5BBp/
	jZWOoC4IyeA7hdBzSaHPcrVhv3mxb0DVyD82vR1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2080c6ca-3efb7c2e-95e9-40ad-bd1b-dec2ecd6ad29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de4d6ef79b4ff206b12373561eea4fe32e7635cc63a9b348efa31462d53cf5b9
Date: Tue, 22 Feb 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645517784

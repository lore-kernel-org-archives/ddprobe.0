Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5CD7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646357185;
	h=To:Subject:From:Message-Id:Date;
	bh=qkCM44hja3B0PE+vvdSPgmQKDTCGsC+Hn3wGfWiicnY=;
	b=RsqWEBAskZF3XhPKx8oQE7jurwoWIp4wI0E4ff+8KZpZH+2gG6hRXnt/WAXSz9d6
	f+Bxo+EpSn5I6K+pIQWvK1aoFlcirnMRqPxmIFKxAnWc4YuCm4FFMjGlnYdsaL6PEbU
	MBGYM9xfjqJy0IdOMA9+OMHHEdRP3sVuKoYAE+yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646357185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qkCM44hja3B0PE+vvdSPgmQKDTCGsC+Hn3wGfWiicnY=;
	b=XXMqILyCMLJ5H8UUIgMQHrkIEar2OdqQO7yLlmkGgO95ssx8UnPSbSoFxifu+GM/
	s7LMS27hDIzy8S4WOEryjHisZa4VNY2osho3yhd3AcYnsCgL//o+KpPHHGzJlIXLJtr
	BrV5Zt9avhTABw39QjUqF3z6b0MEIUmnLojA7qYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52890105-c489b794-2f3c-4f3f-acd4-c1dde19ced9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a254a9166b9d7c0f1abb3d2fa2145ac144b06343b95f088fe2a2b290a830bac0
Date: Fri, 4 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646357184

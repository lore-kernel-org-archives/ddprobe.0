Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E9010EC
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645785084;
	h=To:Subject:From:Message-Id:Date;
	bh=foDP082YSOfukG4ZsgmT/s31yhjMkOO5ZHUYR4OZmGA=;
	b=DDqjQHK9vMYSg7gNshG9myH6B1OsWZbq7k3vBS0XD7GAthpX2BLRhvp3GkOZ5UYA
	vH1A7z1+HrDAL18zpJq/a98EZhzKB/0ZcleLadCcvLAab7fMxle0/otk2PTcLMcgE5D
	S1wkQwf340uA9CIcBEdWQ/tIObga+TP/IrcD+fKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645785084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=foDP082YSOfukG4ZsgmT/s31yhjMkOO5ZHUYR4OZmGA=;
	b=OznALkW9kciccrOUg+esjC59szRU0P9wgXK0IxiOsHlzwBR6OgEu4AigbPxMfQ8s
	g2hVhWNcHPgs/Ydky77enXM1L+ouB8oz6BAjtb3gSSCuFuOQKe49VwWseh6XAlYDA2J
	Mx0UsOKsQZvvj/t2FBNbdCCta6fxII4PnHzaT6OE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f306f7326-0e68b87a-64a1-48f9-83ca-47fb9b57d023-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab340d139c00494c90bb293affc6283eadd61726018f011b282e596074570b45
Date: Fri, 25 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645785084

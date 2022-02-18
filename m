Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E663234
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645167685;
	h=To:Subject:From:Message-Id:Date;
	bh=Pf+AS4bqW3mhbtf5gedgzinrP82fclomlRHYCK5sFYQ=;
	b=NhLAYirGezkLLo3rtrNhiSYO+i4IXuSv0eeF32IGhIwltJwNZuGPrH2JmQsEPMzC
	5+PDDSkw8a5cqMXXSZCZ77+3LjzYWili/1zIC02YVtKHNYcEwwFp+4aKvOu/mhBr6qD
	FSAJuZ4tUh7KdbeFlYkcmyv87jiG/bIbYqiT2C1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645167685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pf+AS4bqW3mhbtf5gedgzinrP82fclomlRHYCK5sFYQ=;
	b=JjpPcx8LfKqof+F7gMRl5N3FX9gmcr+JdQSkxO7pl7Xrf/75sjQGO0uhAf8FFZ+l
	Ex4bT+fOxuZBwHiheVlA+ViXc3QB1Pv3BxgPBq1ovh8mnjKm09xtSIOqRn4kXOP5YpR
	OjGA+bQoUwdEhytrTiHDbMdDG3jKWYxV4VlG98gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ba2ac75-b1121955-e670-4eb7-a539-b77d64d4524b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd7a102551a5dd5f100655f91af66d24e7ee8d921557e3ff19c3e3d354bd6034
Date: Fri, 18 Feb 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645167684

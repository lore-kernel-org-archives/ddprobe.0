Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B29365
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659522652;
	h=To:Subject:From:Message-Id:Date;
	bh=rAc0Ha5Tr4ZKy9N38rWyqHEI2vpTW5R2Paq2mxauAsE=;
	b=Vf4zGtMsw4+arumnspl/yoDGTmrnAZERYJhz7HhN9I78+tD9zK4YJE8e9PtFIQzW
	FiEq9aW+RrOy70zgc/X6bkT/7YBtz59VEzvHHptwWN96eoEIc55YwO3d3IEdKtJJv+A
	2RDX9G5SPZQuLS0zHQKIRWtFSChJj5OveGAwEs+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659522652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rAc0Ha5Tr4ZKy9N38rWyqHEI2vpTW5R2Paq2mxauAsE=;
	b=bU7ycIcVVjMMkc5VJcL2eXSqx0a6jFQZImLKjAyncCTIWRAH8pp2ZFIunIS/ftDb
	NiY7KGwV9Eo2jnZXTfEtnEtFpLK6S96pcqZJfB/5KPsL+mPnWGn0oc+FSGbh3rqLPSh
	n6I+IcI1tyDwoSo5gPCF7dBbNqzS+TvDvi/lLrNw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182634219d2-e319857d-e04e-4da7-bdaa-2055ff9d4112-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97a0b52d1c2a4112791f5c52caba95ce476fb5c669582aca6f3f24071d47a862
Date: Wed, 3 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659522652

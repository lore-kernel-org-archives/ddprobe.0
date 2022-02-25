Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8321B7C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645805484;
	h=To:Subject:From:Message-Id:Date;
	bh=rG17l+TeznixH+M/GHV0l5tJdS6UvrKEJg5NXt8r0S4=;
	b=Sy3gGCGo30TmrzjqPitr4sF7Lw0lcdGP8XjzGzXpwS+6u1N2d8JbE+wmNil0UauW
	qxIsaNQiqLLsJRWXALYL0KMalNXYv5NKr4z/xWlAeNbBI6de4vJE7deFUFYAChU0JAd
	uMIe72MJc++7kbJkStLwYyx/JkkpVmL/9xlKgL0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645805484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rG17l+TeznixH+M/GHV0l5tJdS6UvrKEJg5NXt8r0S4=;
	b=WNoc+wYNkEuqlbZVE7PC1Xl+uN1wy8TMOi9wiSpDu8oITmaH8Hs+7VsZqTwR37Sv
	II3jejkuI74CF5+cwzf1gszSA6HaqghX/kX2OIMsDxmB766Gl946CKv/FShJO1NRl9L
	zyLMSM2hNlYQzzNvDJ62swzrBRZw0r5EsimYp1ws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31a6baeb-c7e87921-55fd-4a24-bdde-711639342e20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cf22b8cd6d956f3a10a73b696a9954a4ab94de64ce8e30b9a42db108d6bbe5d
Date: Fri, 25 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645805484

Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D542123D9
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645811185;
	h=To:Subject:From:Message-Id:Date;
	bh=5pA4v9IPOOHy7DRjVU7ogbFBXLIbZNeINdi3fdxpsPw=;
	b=St+QH5J+5sIqZShlZve6QpFwUZbHzQIy/nl6Ff8eXTkDpZR2QcRCYYxmIfeZSC7s
	HAbz2QPFnipU8Ggnv7d8sajkRnRhqLnWFIyIKcVoDCDWCPqGSkj9mfNsOP1zuND4DLh
	xmGax9dg8bm5YTWETF/AMVV10oLAv/+wweyhuQ0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645811185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5pA4v9IPOOHy7DRjVU7ogbFBXLIbZNeINdi3fdxpsPw=;
	b=PtWZPjnOkinO8wdkayo5qPctidU7jvLjqjGPZ/1AkP9vA/Fp714Bp8bWktA/g1Rs
	Oj5U9COTfuKaG2pVnlIvHd8I7zFrL3w/FBp/3GWZ7SS6K3A2hdHc/tCjtdspie4EqW8
	h02bZsXmp9GnkANBUl3o/DtEfxDJEt3d1aCQ6Zjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31fdb48a-a4468841-40f5-4812-91e4-123bdf17002e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af6a6ff7e40f8746dc328213949d7101c16792ef1c2330f1ef40f4045d11c452
Date: Fri, 25 Feb 2022 17:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645811184

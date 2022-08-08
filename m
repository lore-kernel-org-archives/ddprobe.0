Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7847F3C34
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659970252;
	h=To:Subject:From:Message-Id:Date;
	bh=gUrk0gdCXNUp3gktWRcFDgfGS6JIC9mLhBYXSGgLKtw=;
	b=BC3QyiJmvMbCuiZfAIpZUpIY2aawkH4Rk1CrdRACpyOv+rJgZvGvPnyrWA8PPF6K
	w48hr+PUgCEVm1kkAy4omxGsUcjRRXs7dCpvZdvT3d0QCcoUePqUsCwfbhJvysUcITS
	lWRAOlzt+3Pe66CDlR0oxugGb5gz1yyLC8C5MGAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659970252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gUrk0gdCXNUp3gktWRcFDgfGS6JIC9mLhBYXSGgLKtw=;
	b=WEPFHwiT+olPcnHWuoSwHN13GI/3CCmkcuGGRmrrH90UZ1zwKsBuCjG3yo69tMnB
	/TyY3qSNWT3fJCfgAo4NRGUd+57lnHpzUtldwveMnbfLQ/JBQA3pnxvIbqTK6wuRVcX
	PF5Mu86cEiyk5wsHdnWzKegyw3HmGEQ0ws5hkg+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827defef1c-954be6f1-4fd5-4f1c-aeb3-93dac3efa06f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8079f5c91b5443d1713ac0d82033be970147b4e23c497abd1698f2bfc0e12c0
Date: Mon, 8 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659970252

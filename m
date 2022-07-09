Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366B67E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657331212;
	h=To:Subject:From:Message-Id:Date;
	bh=v51KTWk+ofj5CC7DTxmfsZMtHrY87Tj2Gqs6teOTFwc=;
	b=gWwWFBzDqp52aDNfPE2HXu1g6OmHM6Jvjz92FXnWiwkplEHsWsapCcYPHm2y9xBi
	UQR3y7lH0EpjW5t+GRsrKdw7CfdBHvkwAj1LCTxvWCXVgr75H1xD+fS9kSNPv6MIyVa
	VKEFafqLIxPe8qz5pXfAY8MH6Q6zc5gPq+wsTV0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657331212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v51KTWk+ofj5CC7DTxmfsZMtHrY87Tj2Gqs6teOTFwc=;
	b=auHnHbWvZF3C/yXJgx6qypW+OpKq4RT4qTDY2LMHOlEh6a6NkU2ysTMWdnYl2t40
	XV6jN3kYr2etgSEQbzrLO+78khM/F0iEIhI3cgiFZTD/xej0pFL9Tgoy096gDfQZv3b
	ZvKGOHVZkAitNeyFe/lIgcz0FNl9wlXwADKmPFts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0a35fed-f754ed56-5ab7-4b61-b5a1-9da56a500015-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f980d8ec649b4d96b571120d756e4b76acfa52e2dfe96d9fc0164bd14d618eb
Date: Sat, 9 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657331212

Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0505D7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 12:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653050579;
	h=To:Subject:From:Message-Id:Date;
	bh=DfFFD0fI7ad6gDg22/3FepOnzjABT2ZSWZmhbWxKZ74=;
	b=T9+rJlpVesQItHzsMlkJ71pz+s0xfEbRVe5wC3QnmnbAGBCI8CvFyQ7DBvSxobo1
	IBr6sIY8wA0xgxfq2FDTTUz4aFYaXfFlm3LZ1gvbQZlRTvCBBsJDkcsgUbF+cG2NFG2
	WNLpgPNwITLhlcw9XEUNYRsfhRTv/vDC1lAWkyI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653050579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DfFFD0fI7ad6gDg22/3FepOnzjABT2ZSWZmhbWxKZ74=;
	b=fs/fPGMr2L6WFbarclZgGAHUVS8hGjSTTSqf/IO6idntYInpc3Avm6ZpZgPICLyc
	uW4TusxBeVLqnkSkr6EhBR85huSqKz5qY+1mo/qx0hYNZnR9hsbtCaAlRygDzy/vX4Q
	tGwBsnAkGkcdUHVtjnyWL+GI1kcJE7hWqZG+Rc4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e17e197d-98de5df2-30b9-4be9-b955-701a8ad4663a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 365f0e297129ac985e152cc349abd3241ec00ce3220693df983799432ed4d0ce
Date: Fri, 20 May 2022 12:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653050579

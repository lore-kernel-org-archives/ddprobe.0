Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17373EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 00:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655859419;
	h=To:Subject:From:Message-Id:Date;
	bh=TzGXQJpK3VPkse1s7qSmUvVC5jhUZD9mcjTytFMPkgo=;
	b=XN5ZBRpdQk/R5SD39Oe+cWwYyQTpf8zI5GTbBXDIpt4vwlTzW8muK2NRYWlLWCou
	be31RVx05YnMhDngo3pPtTkM88WOTvK3Va7iyRmrvRjE68GQ8Q06Zo1VQz1AlwGGP82
	tbLdErzqNaT/dIxGZhOvmQ0MKRA3UakMV4R5mNvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655859419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TzGXQJpK3VPkse1s7qSmUvVC5jhUZD9mcjTytFMPkgo=;
	b=KGxcUqNsibQUt/Dq5qIPAz2JkC+HKjRXXpLnD+TIAWN9YpiJxBV8/j86Xdhe1g6L
	Tg7tKqBmLiITV77N1z8kMHiwBHkyWIqUCvp5uMr1UiHVhg5Ao5LlAaYLwyt+QSgGI8U
	lzkAYnwYGuMRcPBTGWuH5SmlWkn9Q29Xk6PVmgPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018188e9986b-e2193b40-59e9-4325-a7d5-287c67b5e71b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 507d0436ac555e73135b002427514d437ff70566276be535c63a497742c6f1ca
Date: Wed, 22 Jun 2022 00:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655859419

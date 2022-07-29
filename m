Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC34B7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659067853;
	h=To:Subject:From:Message-Id:Date;
	bh=aw9n+N+HWQ6Hk7CFgYffceCp5EqTVmj1vhr7KlYj67A=;
	b=bMMkBemdRYgfzMKsTOKtKCGiHKv0ucp5SNZCNjAwT5Xj0j+ps0XcBO9hJrVTZEb5
	JH8nu5AbiW7NePro6kpUM2biAQ85rrpQWymDnrxwBZkbJtaA5AMhHBwgYkfjftNxLrH
	Vh78hz9Lyamzujh/yDV/E2Wj/FX3R+x4GjTU39Zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659067853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aw9n+N+HWQ6Hk7CFgYffceCp5EqTVmj1vhr7KlYj67A=;
	b=Z8R/AQXRA7rimArxOPRld4MCsW/cclDTd4DzB/9p5nrA/tqV2GbKJHgRmWel6ziR
	Rbdj93vdfE1lUqcb11m6IFzZ0DVWJAQQCnExZ/O3/02CZ/ZyafRpz16JHDENIljFzrA
	bQTPKquL6qEcR+QOXiPMwHQUH8gDmcLc6Cm6FN70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182482666fa-151ab3a6-0715-41f7-85b1-f92ea5acd243-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfb0b3a22e57dedfbca7f52c58fb59947c7eacd19904f05149c05622b0cfa322
Date: Fri, 29 Jul 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659067852

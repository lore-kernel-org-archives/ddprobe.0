Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BEC1FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656796612;
	h=To:Subject:From:Message-Id:Date;
	bh=+U1GpBWcpPAip5ZdOxiS2OJHBNaXt+v0b79TSsGVBbY=;
	b=DTPJ82LEQ4Xp8BKxZFa9cDv1GimuFboAv+r7mKfRkF+k6ZLC9Zv0ZFcgKOPydcSc
	GtEcvMHjWwWoVeFiEcjTJ71m3VVL7EUT/qW9gJ7npmMCRkpWq8gtne+kGN9qneZBJdc
	PIlW4XOsgq3M4lfPjpYDw09Irx8st1+Vhob6UKdY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656796612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+U1GpBWcpPAip5ZdOxiS2OJHBNaXt+v0b79TSsGVBbY=;
	b=agXsF6Qlt+ikNgULtQpCBEqd4ua3xfLA/Hmr6WpJaEjoapVSsj+Pd9tfQTeYM5K1
	Sz2AZnR9NotKVwxeL8c/Y/hKRdcRrXcxYBqTuH5ClxxykEYwHHRyggNXNxhI0WqqA7u
	49rAwVsXBOQjR9PpRvUrdNPQcV4U7l2a9MvLgZTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0c606f4-89c7e8a7-7334-44e9-9db4-878c029399ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab29a8294c1ffb0cae10b41d159982d34031e8b34075b75a215299afda7a55c8
Date: Sat, 2 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656796612

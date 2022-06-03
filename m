Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF598EC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 12:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654258259;
	h=To:Subject:From:Message-Id:Date;
	bh=uUZznBPvXgV06bRm2oK0afcxykU6RHX3MztBiA0O3+c=;
	b=V8AeR1BJib+4tAwzd6+rlRT6EC49nWxnhDdHR1d97sihAaNilHvurh/mIHl303iZ
	Jw34vX2DT0yZ5yONDK1tktLM7xlCQ6irvlmbMPb1udDPFa65OJ0IMXJSxTniun9gKgj
	AgYNGVw2LFVWP8QIplTTCJZ5KDjYeuEWSCmMx1xw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654258259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uUZznBPvXgV06bRm2oK0afcxykU6RHX3MztBiA0O3+c=;
	b=KEPt83bKrRX+KPuDCnovLHutZnpmbBve35g6edPtWMKpSVUQDfFMGAx1I9Vo+YIU
	7GlPLjNvKHwV+5ivVB6zfCLCibxu8ij4Q5MkjvL+qqC7mmB9SwtVjsXYcvLqemFtwDN
	jIA6qjn4UwWpzCqe3uh8/+hwxd7sTb5qfwAIAv+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812979d53f-bdcdfeda-abb7-435c-931b-5a11f374e834-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24fc95668723faa6770c4d53eb78a59627504cb0bb3393977ac26c5aece161af
Date: Fri, 3 Jun 2022 12:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654258259

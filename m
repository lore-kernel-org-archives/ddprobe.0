Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9DC3D6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659974452;
	h=To:Subject:From:Message-Id:Date;
	bh=Kbz7wr7ifR12/vivrbbFZq2/rcYFAPALKPZlJSO96hc=;
	b=ZBMgSUGzWCLPPMH9s703ANFmzez5RwTEqkisCr72HGenPQKpcflR5S++I3IHdrAf
	D0HPGZzBk+/dmeMmuXuaNK5ZY7B1GUPd9RXZu7M2mW15Dpsr4BJNq80kBMsqrqQLCQX
	gwLRChJ2jn5VuVdnA3fHI4anhSMaX59fl5Wvt28Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659974452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kbz7wr7ifR12/vivrbbFZq2/rcYFAPALKPZlJSO96hc=;
	b=R1t6DC3+si7tIPR+H1fn1GerTAlSYQ5AdwC2TrnRi6DWeXdKzDSm94erQ3oqw58T
	MbTbLf8hKRhdTw3Q6BUbcz+bAGweSwzXpV/f+REVBXPnKFqRNn7GNzi9M2q75N9hqsH
	GYnh3s51FzwabEnhZItF0VzRXq691D2VbbCVwDp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e300560-4e930bcd-a9ed-42b8-9460-7f180a452715-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7103b74edfdcf77db0ea149aac5f10eb1e8ab98346218f8d17ddad9ce43eef6d
Date: Mon, 8 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659974452

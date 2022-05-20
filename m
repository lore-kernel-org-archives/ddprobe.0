Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A592FAF
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 21:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653082319;
	h=To:Subject:From:Message-Id:Date;
	bh=6rEfPrGpY9hIaaQLBi0F+w77LH0om4JKAHBrP5pc4/8=;
	b=QXBnANqZzwl+EyJUQ1hpIcC5vvYCIbyRxCbrOi4Fn7mcaXjEiIz2yMHLiol7hGtZ
	qMfYkIbZKlyLV4XuVScLaA3daasrbo3fc9Lso2aE6Zh0eVv/nhmAlFfbMdcAVcpVJUx
	g6Jrz3jjILUKsSrGruGhQb/izm+qSVl79EoOhvc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653082319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6rEfPrGpY9hIaaQLBi0F+w77LH0om4JKAHBrP5pc4/8=;
	b=IYQMg1862vtxnRD0qdrdJPNLrZJ9qDgLP41rr19OUg90lCjy3u8bQ1ib+C+3CIvQ
	rp0WPquxjvUOdKOaHcmkL6xXArcXA15tba/mEAlIsPMS+ROfCoZqvIH1BaI01/uoNbT
	Moq1Yj3edb+rqPiR0xDtBOgdiMCarFxj4shOoURw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e36269ef-076664b5-b97b-4d8d-86fb-8fabe8360ff2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b013e9fdea8ebb4299783c30224c4014411131a27807f3829aac8262cf366068
Date: Fri, 20 May 2022 21:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653082319

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F57E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658820412;
	h=To:Subject:From:Message-Id:Date;
	bh=CUG/mGpJ0LA1akFf7nx6HjWzRc2FuP6cYBDEVaDYNyg=;
	b=EVhwp6cKRrLVfbpF6llWHhQl0ncn+0x6Nqo8yx1IDYMuLLa9mjWnuNtTdqmAamIn
	LfDQM0sbN0+0E3F97wHmOrA4p9DUFViCEXMcSNYXqb7nAIkNImR8pUvTbgmo07MABBR
	q9+r7WuA3QDlDagApLC+tcIfLASK2V75FWWUxZBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658820412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CUG/mGpJ0LA1akFf7nx6HjWzRc2FuP6cYBDEVaDYNyg=;
	b=Tc61Eu0VDQrRtSqsMW7Xm9mlMPFxTsygVYecIKivMxJjs9lsppwMOCmAZhAZ4LPh
	o6UFtmuEI36YdVA3o55nibz4Vahqh5RiKZzAGTHuUkNCs2EKU3LCf174GBgZF4Mon0Z
	m3JlM8Yh/UsXgvf0IMyRcoqYAuN2cN3zOLbgugcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823966c362-a507b4fa-94ab-4caf-b48e-8b56a052b564-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edeff553d4002056fefd178b4f8b024f25622a7e140437e2facc139f98b37034
Date: Tue, 26 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658820412

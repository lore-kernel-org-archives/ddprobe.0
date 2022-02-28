Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D084C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646014284;
	h=To:Subject:From:Message-Id:Date;
	bh=oQNJ90USWOQcuKEUU0/RcETexuuE2+M6oPGH/AHbbtI=;
	b=DKr7mxPFURW3VOE/cA2IHW87Rhgr8DMshPUJHecPyGoUTYBPOawMxSjLGA2pg1Va
	JMsfwv043JNIZQcyyYYt/rOAsU7Sj/VlzZWxWag9ShnswXAR62xXFY9Rip9qQ/rzADj
	PGDKdKBjHT5crqZjLeTuBbuIJ/XrDQ5iXDDuJo2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646014284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oQNJ90USWOQcuKEUU0/RcETexuuE2+M6oPGH/AHbbtI=;
	b=YN7cwwuwDI1L3iqfCbh2YD9oXrtr9flPQVmqgq+2oR9dIQ23IBY86C/a1zArUS11
	tEVWtnmPD6f7Oh3/NIrdSzNThaHnrGeqqVBitwK07s8Eug1oGbS1nco4RfD3r2Ym7xh
	O+4aO1KRW59rLUlQfwhCvk5ybEobQ0k3i8Whrupo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e18c407-3e116d45-6364-4b55-abf6-f2e6014a1afb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60979203a1fae05bac84a336a75f43791735e33aa209dddd8a885e4964387f76
Date: Mon, 28 Feb 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646014284

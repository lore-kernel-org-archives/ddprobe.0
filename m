Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001E12563
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657214212;
	h=To:Subject:From:Message-Id:Date;
	bh=b1KSHV1lBmT+gY0Tt1tp3LbsV/R3nXXo1EWyLDG7ztc=;
	b=Aeup7lW639PijR9rVBGl3BWcAhw84vUR+kDU5Bc78xcamujUDIYkahG+OBWXgOhV
	A0CYSga8nDYZJq0F0K/fzRTylrlwBFjBMmVylxPS65tjIqpesrnRH4lqf/1tIMkaARW
	c2e6mpNxgg+hj+pQKKNTTQZEg3xfU556JgiOKNqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657214212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b1KSHV1lBmT+gY0Tt1tp3LbsV/R3nXXo1EWyLDG7ztc=;
	b=I4emRWDaGfy4xvGVwc0xDavdzSLA/3LfjosbnU6aW0ojwE82K2d95g4s7+LPFHDf
	oRrqpKg9PNbrqgV65LLuvaq6Sghu/GWrUogWFwTa70Tbw472fefPKSAioUEcwc2J/M0
	nznifk1MUPBII3CVJHqgawJAHU7Ich9peeyhP3Dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9aa18de-ed34da35-5afa-41eb-8f95-71ebe2b0baf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c32ac241748cdb94ed29cbf4059b5b0de76e57094c0e818884ee50a2b1ed3929
Date: Thu, 7 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657214212

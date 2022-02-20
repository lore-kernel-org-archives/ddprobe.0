Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731C27B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645373785;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+S7oCZ905zHdnRTqxsZUpebFAjl4RvN/NM83NwGOm4=;
	b=f5CoFSb194jFQQ0/A83ZPJNg47Ox9OiEQ+hrFpe1e4jM9Vj4icHyJw9MOHLp4aWq
	dljPXA9Hej1ytzweLjGUnikmT5OkmBxRZIqNDa4/8P2kEWkwScsvrdH/XCLz3EUyhWI
	2K4ZuxEGTpLLkvJihOfclH+L3mFvxKn+/3M+04os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645373785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+S7oCZ905zHdnRTqxsZUpebFAjl4RvN/NM83NwGOm4=;
	b=BJgbfC6hc0C3L5rORebGiA5PP0K5wC4nJxlQfL1IHo6X30jm4TCKTbX1ZvYzXpL1
	esF9YQXb1WTrqTlSOzxnUIl0Ld4gZWoiLSVFvYDScbLiBxoqSOKMXYPXoDWVOvTUI6b
	/vBFNruZV/GP6AF1K5iqzgQTMmIKnlP2NjnQlR+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17eb838c-9d64359d-850b-4c6f-8443-872eedcbf392-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d8686c1315bd6c4713e9b3afcd1c38e400f97c1df2a0e3addf3753efdcc6aa6
Date: Sun, 20 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645373784

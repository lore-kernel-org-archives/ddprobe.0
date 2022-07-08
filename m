Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B8629A9
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657296412;
	h=To:Subject:From:Message-Id:Date;
	bh=uXgJcffKzmxvdiFk+tjV5JsxV6Ga607aryqTF6Z5nPY=;
	b=FtsKJA4+toVDRC5sdzPUhZPNYFdVNxUtep/A7D4iA9fcLf5OdrDsK6D120qiTF/g
	yPTqGOIrKfY9e3el+Bx07BHCxIhQJ6n9XOvkT35IHR5ks+2D/jBLHtt1feYfuOqghHA
	Koa/mjeM7Iy7nZ75EOI7tlkdRNRJQG7tjx/exRtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657296412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uXgJcffKzmxvdiFk+tjV5JsxV6Ga607aryqTF6Z5nPY=;
	b=QwJXYVHoSXIBVFGBGqb8iFIQNCodZ1HNsUBDMVJ4kXuGeNlvkdN3lnfrTxY67RSW
	QidKCoMKqwpIu5dgAjmaHed5+JFokopxPkyQEFfGMzicvcRHW/HLiU0ZTrUjVOW4EaA
	sJnkUhwjB6zL2BWmXgBGTiMkshoxwYvzsdVOOTfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de905edf-b06bf374-4f86-4e65-99d2-898e1dda3674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fba4473f9b0d2e8c186d3b2c044b42acf961a743ecb8b96e5eb15195117a40f5
Date: Fri, 8 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657296412

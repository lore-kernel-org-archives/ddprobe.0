Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CD31FB8
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 02:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652928179;
	h=To:Subject:From:Message-Id:Date;
	bh=sXF/yGjABRy0AVUc6ypjBQXpgw8U8x3MS5RIn371kSo=;
	b=Otc1xbbyXcRd6LHaA1rQ46XH39SnOq+O215eI6Fb0KyLQr4hINkaP8hGtW2mOw+6
	kde6i9nUpao0HUW/rlYgDt42ErAnHwJOJ3tYQUVWYDoBH/k9fe4aAGsrblcfxhhV+2x
	NLWbIYIhGqi/peVySRARxopXVsYrqYBCnUq0eQIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652928179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sXF/yGjABRy0AVUc6ypjBQXpgw8U8x3MS5RIn371kSo=;
	b=OBGjUr+G47QD8ch5sxLYBFOCxIYoY7hWaq/brqzNP427UZEHUuBq9FiXAk7k2p+E
	E4rEqfwTeSaXQZKyjR1Y/eBS2cisBXKSAJ84VGhCWtdgg8mCa2Bqy2Jsegou+jHm/jP
	GXWI/MK1XwhQNKvGIzYf1Wsi1JMPrC63uhflnrs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da326c74-2211c483-0de6-400c-9731-9619e0d29bd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ccff4a7022854b3e38989c8adb259d60276aca3f551a00ca2132ce830ca2d32
Date: Thu, 19 May 2022 02:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652928179

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF371C31
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 12:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655988359;
	h=To:Subject:From:Message-Id:Date;
	bh=vVi0OO1LymFx6wunaGNj4kqhg3qwQjMo30QJGCTgiVE=;
	b=TXdrdBTKrjKF830hxQFvL5alnqqiKLVEOmMon0TcBBuZQSQEALb+IE+qtDXsfg9s
	qSyJBIlgavoNsAhUTvBVtsv5/Fbm9STeanZ/uI0Sgp4AgGSi8ivLAY9EK1xORsJ3nCG
	21g3OsiZsYRuGhEIcuS+p4yRoFdsx+jogFcB0OhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655988359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vVi0OO1LymFx6wunaGNj4kqhg3qwQjMo30QJGCTgiVE=;
	b=Tgod4UIZZSr1gh8ikS+Qh2B2pLM8bE5D5IqDEoDAj4eT0O9E6KBfwKCsqEvl8GCh
	AdUViIpvFJboiHP+1uwWtzHTkfLU2HUFpJ7L9xe/6EmwaRhBLrawm090pcl8cdkqnkm
	k/vrZJkuSbxj3Jb9emSLuum0Ku8HmR34F31vKSmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819099105e-30486caf-a68f-4f4f-b45d-ad94e502d657-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e2a191ca117485f28488557f1a506e5f6a2ee3edcb11a92ccc315c7a38ab031
Date: Thu, 23 Jun 2022 12:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655988359

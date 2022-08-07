Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470931389
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659835252;
	h=To:Subject:From:Message-Id:Date;
	bh=UiA1qa7ApkkcT4z9B7e+YtfvBgW+jEvW6/NAe8hmfRc=;
	b=kEupLKYTMjh6ksVskGfzbJ0P6KbvQgbfNuNZIok+sm5LeLTXhqGVudWdACEELvu1
	hOBzo7zClT1xeyciB/nCDzSKIL43AvXDqHl58XlZ/zZiRus7RZGazcJbkNpDCJIWh4k
	iyoNtyqH1woT2+LL2AO0rDnQt3Jsi421/5ztu8JQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659835252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UiA1qa7ApkkcT4z9B7e+YtfvBgW+jEvW6/NAe8hmfRc=;
	b=UfK1NFHKlgplFLiasGbJ7iy5ct09OLOm+wmiphZucl0tixP1mT0sJLCdc8bNKcf8
	ipdLxwW6UACTt0PoHxwzF7OvduzUsmr/YZJxNdU/BmmzlpXdJw29dole5sUNQP6nEEa
	RWMY1FYsRqsZ4IW242MqOpkrMxgz9bUGcT2a7+Vw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275e3ff7f-9e5e9636-7d80-4300-a247-228ca636a5c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77b6d8c0912649dc96438967cbfe85d75f8449eff5dd638f3ca4f4ab9a179de0
Date: Sun, 7 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659835252

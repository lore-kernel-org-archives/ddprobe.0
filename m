Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB94A7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659450654;
	h=To:Subject:From:Message-Id:Date;
	bh=sU9EwxCWzo0wkcCRvzDKOrhgPvCwGTz8uIfd1bg/M/4=;
	b=SMM6okyDFtDtxSPMCVJ1NvO3N+tQ4qlIgByLH0rA4nPm5XiTuuPXZe+vGuYa9F0J
	BiW6ILzCmSteKCFX0UVaPcOzw/WDsG4yFvthZNlWFp5J59xgA94mbvAds/KcTHHgi73
	8PkdzfTpfyeMaz+rmnpfn3nnsTN2vwRCQe3/aM3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659450654;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sU9EwxCWzo0wkcCRvzDKOrhgPvCwGTz8uIfd1bg/M/4=;
	b=OQa3XSR12SzRdjX+zvqHWIn6aCU1RbesbJBWHzGC05aseyM7QeWgQ6Jaioo1u1c6
	3HZCC0lzkN6+wVMLBMCJv2iOyWvUJkr5aoClWOTxS7I9ROZMy0n8bZGIKe95ehm8aEu
	vBMyNEBLSbH2knzozqhNH0GYynHYQJSYQOXKY04I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ef7779b-62ef87cc-b5cf-4f7f-9184-a77659efdd86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 836a029cea25c799f114a4a19cf586e3abc5ba28f598370a6283832aab459149
Date: Tue, 2 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659450652

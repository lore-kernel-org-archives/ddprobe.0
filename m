Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFA77C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 07:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644738645;
	h=To:Subject:From:Message-Id:Date;
	bh=lN2dPp7me3rB8wr3uGptDj47N9mpxHmpBkCMi5Vqoq0=;
	b=fuwmMZgtSOxSW6ULhbpoxFd3W7ESHof9+uHuIzjOX0s1QlbQ8niI1FGpKNCWkD3I
	01YZejTRo93kIkeF075FjvaiM6nrormiXieB9gwswmuLJ0ri2A2x1HFW0KjGHvZ66Dv
	oipt1oGWlNEKfufxL79oor9vCSW4CDxagxVFLGhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644738645;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lN2dPp7me3rB8wr3uGptDj47N9mpxHmpBkCMi5Vqoq0=;
	b=Gi2gT+cicdqcdvZTfUuoQxSoIHV8WmFEoyY7pmH7edcdIjFd2fYWLUQYjBC5yyDu
	Qvlc3Zp2PEXsanmkyLQR8YjakaTEqQIHxSNlEefz4YoIrTBCjRCIP/Mmdra2ZzQTYZa
	GRoIlvpLFbfvlTEZ2IlM8Rh8ntXklAyHFoONKHKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2100da3-03bac7bb-00c2-4fa3-91a3-f1499a7d2888-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 309f250d82710482218fffa7f6f31ac5ce116ded813252f05003ff7ef93b3f1d
Date: Sun, 13 Feb 2022 07:50:45 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644738645

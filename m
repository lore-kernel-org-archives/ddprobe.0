Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F914F2F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645246284;
	h=To:Subject:From:Message-Id:Date;
	bh=sbkuCCboY2Yp4PwBB1SePJdjhvUyLMbwntnyvG8c6ks=;
	b=bOf5bMJoX/mGJ7mTsZtJZWUK8oGyQMAtwy4GlqhDqgLwwC1D4Of3BfHGEC1twFaA
	UcJZFg34oSbzjJ+fF3wk9nyCYmRcdiB0Q7dJiJwU7XMMwEhPgx9UKXqn/L0X4daStQa
	As1gBwACAp8EnA+78MG0621NzUkI6uE0C7ibO8tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645246284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sbkuCCboY2Yp4PwBB1SePJdjhvUyLMbwntnyvG8c6ks=;
	b=ZEWc/lMzaroQTdtbpcHTgeTBbRcPKNjQoCSpA6Lwwd4ashJf22yoIceVD528Va7b
	+3wH+Aou7XQDuPxDK39Sf4w6MN5TVxfq8XM502bFln2onhGI9wTEmrPlS7CuJDOtM0A
	i3jQfJTiVkrq6QFtiVuakcfuCAscPGZQ1rkgLeCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f105203f4-033e2bfb-ada6-4b67-a119-2f402fccebf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf628b757d323beda209201acd89773787859767eed9b4da58845d751004b22b
Date: Sat, 19 Feb 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645246284

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C20A3B5C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645891584;
	h=To:Subject:From:Message-Id:Date;
	bh=5tVp+1CpSvU9GaiYj6oDIogDd5OtNZ7fuc08b/HQaWM=;
	b=RkJRGHvTCCIQPTdOIrEO3/xMGc1vSA8KXxnT4EpPPFvf5/k+YAD+V7U1vPUNzSs/
	kwKpEE9UefuCbqAdVnbrUHe2l0U5LdeEcGCWuV9LWAgSf7qhYcOL7Y/K5t/RAAYyyB3
	c5JSBnHLDK3/QQ868TQ3osf3VJdOguu8o4TB0Mbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645891584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5tVp+1CpSvU9GaiYj6oDIogDd5OtNZ7fuc08b/HQaWM=;
	b=Hvt06zZOULf07Dy47Wg2XkHhHuFbLk4FUhDn9h9iaQRyOoRue26tU2zPaAnUjbqb
	6kICJkyUTFPVptf+JB22+sw2nQVnUrlyF8ZqAYt93OYBdVP+mpQxSKRtDFsdDUW5f0V
	/Dfo0n+/OxJps0ShyrZadzpLuyeR75xnl3vvOGW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36c882ea-269ae0a6-945a-4531-973f-8c84407e6500-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70f0676f431aacbb2272bb118803ecb240e9de9709b4eeceafbe09dc7cbb36b3
Date: Sat, 26 Feb 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645891584

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5789610E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658977852;
	h=To:Subject:From:Message-Id:Date;
	bh=RApDOlYW3/e5gSH4eWbayYAx0uSsic7ecjMmN9gLqbg=;
	b=U1DAy2Ws8VFBvmIkdiUoyP1CTGXW3nHDaWXZP7Wddz20TpHn5zcW3OKuSyeslXl6
	zq5U3pHGLa3r1R229t9tQ0ZpR3cR3gUMBvRk0U+nMbtIscqXFcZ2hPi2UbSu84xq9Mi
	5ZAJopKFsVSKwrjRBUK6SHlgO1zLMdWyGvx788oc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658977852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RApDOlYW3/e5gSH4eWbayYAx0uSsic7ecjMmN9gLqbg=;
	b=ShDjFaMFvbB1Nm/rRCnHx9y2gc7mj86wZXLkr6Co6oJ3m5p4yI+wtx7STRmMzDeN
	NnV54/T27mKl+socMRyvq36sJ8sBp+ETDPSRtyGtWMYRNj2V/12sO3P78Tx7yJAzuEp
	gr2EkAR3cvxDRchpfnVUaKvNaKYhBVHiM1KLtOQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242c91c8b-eb77c41e-a0ac-48d0-95db-f949d6f2666b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01f8dcee11e2b62ca48b5d5794d5590ef51edcfd48670c31d8ee68079e5654d3
Date: Thu, 28 Jul 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658977852

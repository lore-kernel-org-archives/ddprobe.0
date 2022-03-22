Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1246A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647941185;
	h=To:Subject:From:Message-Id:Date;
	bh=6fUoLbDhz7YPUYxtd5NEK4ZGnL7XIykLb2WaHKEO0pM=;
	b=VVtWYsELEkM3r/JTKcvnz8sB09slbjKm0EPBO1LZxHYT4bk9DE2g88ddURAcS6dK
	AdO6CjOiuBDUIpz4T1OPTIbaY0+m9adYgqIRe8+NYKIqtlU/cIprSUNd/TnkaedI60s
	C1O/oC5NHYewDCTaEJeJlS7T4mf3rHVQtg+lVFu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647941185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6fUoLbDhz7YPUYxtd5NEK4ZGnL7XIykLb2WaHKEO0pM=;
	b=P5D2TpnhNM2Ps32gh9Hx3+t/QWPJ6d5taY6EEc/Xu5f2BMi4iPGvzeSOH792pryf
	mTAirlawqdyF8wLHnJzWFMGG84GfT+U3y8Ig2IDN2khMl9pEqXwFfLxw/XHWG9ZFLCn
	F9zMnux0eMeJt5ojCDAKIjD3FTroCZmw4jLz86CA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0f2ecde-8b9f8be8-a1dc-428d-ac5c-fde57480db38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63902939e3b4ca56a36d091191338c27f829c0db5853ce9de26679059250eacb
Date: Tue, 22 Mar 2022 09:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647941184

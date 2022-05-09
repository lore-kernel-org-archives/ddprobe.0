Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDC229A8
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 21:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652133059;
	h=To:Subject:From:Message-Id:Date;
	bh=6lucWSSjbTfDuwVDesU5B6UcUCw3t7o9hLMfxLpC+Vo=;
	b=hPvpKuWE2Zi2GEAsPPIXe5KqzadF3UHUuQII3MN5uj+7e3uABuW30Bg3P4BSs4pC
	0huoUaWFrv3qs20FnnNaCxndo3TrTLdeoWRt9m1rgU8Rk3OQAqwL+8czH3V/bso5r7F
	PVWFlGeoJsFCcwhNk9wc/8nk0oiPJ4gq+41dENEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652133059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6lucWSSjbTfDuwVDesU5B6UcUCw3t7o9hLMfxLpC+Vo=;
	b=jsXUzykPnA+72AorWCx8jclwAR74q8ouoVuFe26gUU47IjOyOPFPArFeq/igtPii
	CcHIqjLFAOsyRfyj7zobN8DCd949k3NSiTSwCg5qO8j9V78jp5Zlh3qEZOao+O6D1hT
	rUHLPQA2yF5U5QCJxjnNm+niEt1n5kobRDyJ6otA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aacddad8-b9fdf705-6e2e-402f-945c-e4c8a0470986-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d07214e1114dfe7c05cc34c32592d162e67f661668debc107f981bfbf3e4e07
Date: Mon, 9 May 2022 21:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652133059

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205E023DB
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 08:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649838418;
	h=To:Subject:From:Message-Id:Date;
	bh=VSTsT54Ny/qgShsLKoPO787WlcwLx0IKP0OuEaAi2sU=;
	b=TWzaxHijLtedpuYWRDKH2fbo8uisl4IWFkSWbKIEbLWTkeOsjO3E1JOQHm/oQrxr
	bbLrgNgYLq46q48MCqJdRiccQnYNZ5fkBuij2cjsrCLBx4tgeWzsGU9XQhppegINx/N
	0VgVX2FjbcRDAagpVxc1KtveWTqruylmSVMTD894=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649838418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VSTsT54Ny/qgShsLKoPO787WlcwLx0IKP0OuEaAi2sU=;
	b=CrPJLhaNDPFDSltZcLPnkfbi+/wvrYL4g1zFAk4Bqih9aY6pQgtKui1YAuOId6TC
	vVeI8hi6xdclwNgQfv58fGpm3/WPsZU+QUM4+1cAYeK+ky/erlz6akklFEorg1Ze14/
	wlULWy/0eKtuvgDnI4nsJSeCl+Ki+QmEm/uRl1kU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018022086945-8768bd4a-9544-4811-9125-d5642639756d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be734c44f5828bcb37022621cfb4054a678f43c1afa98088b8fa2a6a9d35ab19
Date: Wed, 13 Apr 2022 08:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649838418

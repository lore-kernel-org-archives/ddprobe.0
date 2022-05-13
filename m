Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A77211A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 10:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652438939;
	h=To:Subject:From:Message-Id:Date;
	bh=PGqEB9IAus3JWPF0Q+luatnQ6pi9ayptBDgEKUQsy2U=;
	b=SBrnTCD/MJ/4ms6TcBi7Wbih7Z9IXVFdh9Z+glGYoWSz35wAkqjNJwPkFoxqyCUu
	o9WfclHd8xx35pgGr9kYAoB6UOmNiK8myjssDcJTHx4ViyxXbZT/eKyNNj+Wucgc7bF
	xlW5bik9GDKuIgA2qMW7DqJrUNxNdnfxhHGzCOiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652438939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PGqEB9IAus3JWPF0Q+luatnQ6pi9ayptBDgEKUQsy2U=;
	b=d6M2OJrmzw02S6CpkMtUMzMYXRbcWrmeVkGZHY0T/KvsGGQGbj01NgBdbnM0KkeC
	xNZZavjNvjQP4f/6kVLUnuE1TJ6ziytwW42B/GsIYC5Vsjjxbctl3e8kZ32IxAmSinW
	mXTg/f7MxLbrhsB2C88LsvmMdH/chWZw5S8H0PuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd093682-5230ab41-d854-4cfd-8498-d5ca6c5d659a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 314e65a725ae58d7ab0535f7e9004c122fed3b1705161a19a9bb636d95e73008
Date: Fri, 13 May 2022 10:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652438939

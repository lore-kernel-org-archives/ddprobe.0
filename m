Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204801C3B
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657517212;
	h=To:Subject:From:Message-Id:Date;
	bh=6kpuPlqV568Eo7CEGtwKCwBYSvaMDNge+yHOlhDMD08=;
	b=d9N63aqTLGv6GB1ZxYAlTH8LDpwZoW5Ip3FpJeUBCIVAkLAvQ+nk0dXLdZkTjtva
	GVpewR5WqaMVtrKu6yb/PoPhYDTArYz3XmvxbADR+hzW0eifFQkPKiyidLO7aypwB3R
	+bYcW+r+BwaoT7KQutCcvkMDvHQcRZrT0iYQZBwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657517212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6kpuPlqV568Eo7CEGtwKCwBYSvaMDNge+yHOlhDMD08=;
	b=I2KZ0sPHNGDdmDdTL79iyd7M0cDE4+uQAk0G2GverF+5ORgLlKwWfPaQUGuSIB37
	mRsZDxav4CUr0zCrKtu8gEjE7jbk+zyy88G63/z18dF4JPNMiY3PLqOUduTLB66dtLs
	7BQy1N8cDwQphdC09B+xvvjdtc0U4KcK4/FMTPtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebb98290-a9f92fc4-0f27-43cc-8fb4-366a46f95c69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce5e4393f072976fe6260ad4f653fcb4b70299959336d14e05b0eab4800db890
Date: Mon, 11 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657517212

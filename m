Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F8233D4
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 22:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653258179;
	h=To:Subject:From:Message-Id:Date;
	bh=KwfwpcMcFYkzl+e8hN/ZEeIzqDgHGjabZ4uubW24Vgw=;
	b=fG+XZH+vx3TJte3H0Bern6T03lIfqc6NHW/mfsuaBMaJ5DdfDYe1rLxchrmokKvV
	ZvEBjYmbtM8cmVM40Fx6Vc1dPvSHfcV2RVBm7O5RlYNTuhIodWhgwTTM6YjEABl7w7z
	BbxGdzB8aw5RPhXGwxRxcso7FQuNAija2HNAX68s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653258179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KwfwpcMcFYkzl+e8hN/ZEeIzqDgHGjabZ4uubW24Vgw=;
	b=Ut7Gh3qrKF5IS1TEVf0EsJfIVf0gyJURj/8f69UJnPE6H6jKVbfBuJV+xWXMltZm
	58zoUm5bspwPOoXcpHNUjjqhRPMWEmwYLbW2JJXxKNOjMZthuxEBga7Zjhh2d/Bz6pw
	qc4jYdpGGhrRZgIQCsGm1gtvgQXlnf4NBh/gw/pQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180edddd2b4-01819017-c79b-469b-834e-ec405280c498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faafa9703a07375eca85e80256a0208b7004d53679c441abe80112109c47dd9c
Date: Sun, 22 May 2022 22:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653258179

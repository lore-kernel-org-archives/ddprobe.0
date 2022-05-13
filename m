Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542AC211A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 10:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652438279;
	h=To:Subject:From:Message-Id:Date;
	bh=7gOSt1u98R4YaveR04eZxH6KhkTxCpEhcNKrWdz56G8=;
	b=FnTk3l3P85iWjZgP2LG7satVmdbbBSllJLMzU4/SvSR9TI/wR0qblSurGRjDKpNR
	rHR0rJHthHKgRU3aHLRJAf9xpaLgRBl8yUm+iRP1HaIKiMk5pQ5wW1eJCC7QtVIqd+T
	sC34qfTtUUUsia8+IQtKPIs8W0CdxutjFBgCNWTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652438279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7gOSt1u98R4YaveR04eZxH6KhkTxCpEhcNKrWdz56G8=;
	b=DcOBSfm4ldZowWxb7Kf3FAKzn8rBqcQ5vzvxq5HSBqCfgQeMggw/cgKnNJf35ABV
	014d1apRY2E5rVTIleGd0ExogFC7lNr/hkzN0RlOaK3eqNtidQ/kls82qTWAHZr/QOT
	dS4ZjwiN0UfrG9n1TWlk43fBVThUeBfow/nFXYFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bcff2471-f865f52e-ba1b-43c9-9600-6bf4bdf521de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82615ead052a3c4925ca7e424bbc4b47acd083067e5e90aacc420b0b4d8928a3
Date: Fri, 13 May 2022 10:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652438279

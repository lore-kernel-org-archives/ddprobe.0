Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E91848
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657463212;
	h=To:Subject:From:Message-Id:Date;
	bh=N6hPqViEv6G4JpmRXt3SGWzV6xtWitrpRZyXUNUsKX0=;
	b=Mxz4WlxBGJDhRDA0r9VOKwNkPyQmRmz2syxYJKKg6HiOfeGjWyIgpWYdb0gukvdM
	ocXc3Ta3eGJsKARvuKnqZdPVylbP5WGoMNERIDorBf/XmSGdJagy0LkQ9lCRVgwvgRM
	GUAO+K2SANX1sPLAhHIafo1hA6SapuqySXnKYg0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657463212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N6hPqViEv6G4JpmRXt3SGWzV6xtWitrpRZyXUNUsKX0=;
	b=OEY3Wthfusqf/bAdyPxPE0d5JXpKNN9k5pAwVc/maxs91vaLU4eDWV78E+Ak0O7a
	5Kezol/N5zx/pwB0lWv7tChUhcMydkSgt4WvbOxsX2k7a6xfTSPA1XdO04HKsDNBufw
	mk1m3LPu8sARoK5vxq1UNLc2OYKogW51J6YEhWlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e881891d-b4e51868-76bf-4d9e-84bf-9b56e0bd27ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af04370f7b5128c35b74c2ad88528be85c208ffff57adc9ae1e1e7df3a833382
Date: Sun, 10 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657463212

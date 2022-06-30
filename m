Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DEBEBB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656581212;
	h=To:Subject:From:Message-Id:Date;
	bh=3hEwBTot9yzgTlkLbcldkXbPl/i50OC1WAXJKqyHDO8=;
	b=NXcH4lFWZzzo9DR+ZAwgywSsDZPSXVEli9oJ+xhHnMHnDazKj8dKlg5l8CgdCxvY
	JKlL7w1Gsuc5StoTwyU3E10iGwSjz3q+VMaVy/IlmfNq6+x9YNgSV737jopWpFEjs4r
	M59rbpXbQiuB1ZYC8sf1AnPrIGggdc868igzxAfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656581212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3hEwBTot9yzgTlkLbcldkXbPl/i50OC1WAXJKqyHDO8=;
	b=IbB46rWw/FuqBJoFb1Dlashves9o6ewwDBXTntzFMPZoAJ5aMgQcIIrM/NYBSuq7
	7ZDlorbfW94BRyDArHAhWAXWqTJXOE815a38V5X4A/AstvnDBJUMuKGD8OVwl2ZXu6+
	zTSqr5EZKzCPcH+3NBSWPRw/ipSI4idNsYJ6f+40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3ef48a1-e78ae88d-ce9d-491b-9605-d7702898790f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15c5b0c189236e8dd95f74ca0269ecf5a4ef50275c32ee90141652f9dffae383
Date: Thu, 30 Jun 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656581212

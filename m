Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C7262C
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659519652;
	h=To:Subject:From:Message-Id:Date;
	bh=XS+I0CNbUIHOIiSaV5hvdRJcdSs4ssjBdAWiK2hJeWM=;
	b=ZtWJyea8050pmXI9VpSRvljngCixN7x7Vcbp4tVuuwPx82uWdHqUhzokgmR2xKO8
	I0mqgNpvPY6TjGeQdjpadRwRNsHvXPmJKw9u46mI5lUx2d6jFTH2O3s2ZdjVqwYyx3p
	BpcZIW+bYBG2aZP9AQsofeNXxeW4R1zGWWze6+Sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659519652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XS+I0CNbUIHOIiSaV5hvdRJcdSs4ssjBdAWiK2hJeWM=;
	b=VMEdFBhvK+pF0XH8Se39IWtxayR/78vVBdE7b7c2YiWI0I4axMKT3kSKgls3hHjw
	JXu7Wio3moQ3Rl2j3UMcGNb+10NKQ/ebglq0TPjUzYAB4R4r+pAIE/geOPxU+An/Edo
	eIAXfzAVEx3V3ht0YuWRot/2wVJJ+H2JpvFIGnm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263145316-d2f7f3db-0a68-463b-8eeb-7690391c2a48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ab642e1bf5f724c4c53befb351ae5f892a89fa4144c3a732f763c7dedfe48b6
Date: Wed, 3 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659519652

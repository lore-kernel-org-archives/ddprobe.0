Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC312F2C
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 21:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652390639;
	h=To:Subject:From:Message-Id:Date;
	bh=w7MKQOy41+aGCmCYSPZT2oNx5ObTMcAU04EtUT4TWl8=;
	b=HD3Za6Emku6R0Gbj45jolI4D/CXCmIRdgyLjA8xoqwePalT4D5mQtMLvpGKHY2Na
	InyOV5jG9abdKtmGYO5BoOh/9rBM1rEL4S4ZerfMAKVb9ePVXO436m/G+NuB0+UuBPE
	mThxSFMoR3yINvkujiPnduSc+/oKkB6R7XgZnZD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652390639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w7MKQOy41+aGCmCYSPZT2oNx5ObTMcAU04EtUT4TWl8=;
	b=cu5Bp14spuKHWA62GtAKnF9I+q47tUqIFFmUz1pz0NQ7t1Fwx5Ouc0tGg1E/a1m4
	FHDuziz2F0znpbNTltSGULbralUMGEt5n7tReK0vxPMz/Er4RTEvT9tWHv9PfwqWIgr
	E9OmqWA2VNCFc3Qqf8pN8qeRssD1sGhLsRFnbM2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba2836c0-b3d38e19-15fd-4b7d-bab3-3bcdc984f171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71f1349fb1ace34b055d8d1627bd12fee7b85093e2013d171167767581fa1b03
Date: Thu, 12 May 2022 21:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652390639

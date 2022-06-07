Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723EA7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654601399;
	h=To:Subject:From:Message-Id:Date;
	bh=/Xj4CiG1Gt6OQ5J+7vNqgdrBdBWY7wZZVH/YBFIT22w=;
	b=T2aIFKZ2/Xo8YUR081rkK0Qz+r+WFrqMbJdw8H/O+5pYWSwlckakIx0/R29KcLb6
	d38bauAp+N3Trgc0lmuMAzoBipbJyYoM9bDGp3ALR//4NdAf7sHc7dkXamwmPAGsk4g
	oYJcYl/XsDMCgvrr6CZBo2X9vkMzco0gtK/Ez+Ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654601399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Xj4CiG1Gt6OQ5J+7vNqgdrBdBWY7wZZVH/YBFIT22w=;
	b=KNjJbZn6vrZe1FhD4Zsu7zQ02Nm4D86ie+RUZmOf5kX/GG4s4VLeqVyLDt/zPJrH
	p4PnQlE4OmbEZoF/B1HObc0gvh8ceUHyxOTFxYw4jenju0vKB2Rw8197JqW+4j8MbUO
	xji84LXGEiyrSX5M3Mo+MQPU8pCEixe11vO+vRR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813dedbc0c-41bdf78b-0de3-4916-a8af-670f68f634f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9afabf670d90b8d56dc398e2f48b70c776bb386c16899bada588e5fc88635f6
Date: Tue, 7 Jun 2022 11:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654601399

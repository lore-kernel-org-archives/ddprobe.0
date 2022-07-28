Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EF8137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659006652;
	h=To:Subject:From:Message-Id:Date;
	bh=4DObSGl41GeEtzpT4bX93XViauLr6zbvMAMKFVwSDMo=;
	b=dz5HIsDC+Y3mSDHnX6chVWUj0OxSKOG6Mhtgm5loVe7bpq7FIs0N5XHDZK8/o3z+
	IBEtdyHCDwFEl0h/K/hno+4giMygO2Kt9+95NFvUrcWyoPE+MVtT0Hx1GKAAooWbHBy
	DLI0T33EcPmzgurnXvbB907K6ORMsW2kQX+q8bzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659006652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4DObSGl41GeEtzpT4bX93XViauLr6zbvMAMKFVwSDMo=;
	b=VgwpjHC8R1VUoDdoTUhzWIhclFCX9tKS4y9TW3CejP/YDCVYwdA+nF/glQwTHR64
	e4wRz9im/WVE5bQoe5DQgtz6zuBTFC8yr+1VQEKMCufEf7I9Mf0QfnlyrJyUNSRZ/cE
	qgD0jU9I+82SsyrjuUB7pHSxGT5UEb3h5JNieVzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824480906c-2485c259-fdb6-4863-83a3-e77281f92743-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 005c72caf592d43bf7999488cf91dd8ad2e13e8b8d744f4c527b023fb48be2c7
Date: Thu, 28 Jul 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659006652

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A121855
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656667012;
	h=To:Subject:From:Message-Id:Date;
	bh=9MFKiQhTVG3Gx6VK2ADXYQqoz0CehHabASmzGFyZdoM=;
	b=dffZ9RPCtayGp2+SDBUvEV1W33AeGtTALntQUMr/3lvbLLthaJO7ogAAfkHPSUGf
	axZdZLJUhMe06xNxB5073jY9kQgSMQnciwkkN+BJCyX8yRET0kQHcqJX74M92wOjVHe
	tp7b0VV7vyGgdN0eU4J8IA8U1wAzU8Z2pmK8aLXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656667012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9MFKiQhTVG3Gx6VK2ADXYQqoz0CehHabASmzGFyZdoM=;
	b=OaswHvso8EkXG2JW8NylzSCoCfBguDkI35VbZ9s2/ibISOQdgvWtiA9axFwLC5Ay
	c+O+AnpdJuo5wASXBRpJU0jM/62RoE1Zs20A3gLBDSzxmP398xNB5LIl+bfvn7MIain
	AeBBG/Cr3viDISgyNqqJQkws4CPzFcFT/NVvgno4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b90c7ce2-667646a6-2aa3-4071-80f4-c78b539f01fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4150510fc3a21c426c8996aaaf2872bc4f5fbe1b2fbb4ab03768ff62c096b6c
Date: Fri, 1 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656667012

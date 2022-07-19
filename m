Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA6710FA
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658207212;
	h=To:Subject:From:Message-Id:Date;
	bh=dNhH4YNhFWVyJe2SZx4p5FmuTOmRuX4QKG8kA+/1Zww=;
	b=idrbmQVBdl3SX+erh/RajPRchFAxOZE3OWaGFJEV9a4FHuVl4dGZ+8/a25U3z5Wj
	v/r+A5g14/+RCAc6ezoBE8sNfCs50axfTe5Nw8V+L22ENmBnIY6bCUs7jJ9nZA0XM6Q
	QDTP7P+Ee09dPMzHqgKlSg36pPMSF0+06GZoXN9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658207212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dNhH4YNhFWVyJe2SZx4p5FmuTOmRuX4QKG8kA+/1Zww=;
	b=ECiSbu4x6tto/FhHY3Cm5bScKxg3YSzSkJ7i99T1uXysQUWK6ITDqPDmOCK0o90J
	q7j3ROXRfVCIdairLCNjwFl7wKEvfaNOjSJGffB9Vuv9Rno7cWKF9PEPsGoccpomKjA
	EQrGCllbnZm8TVCe7A/A1hKbz6laYkx93RvurqPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214da1313-bac16b55-26fd-4c20-b2f8-1428d6540bf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf2d71f6d55682c2cc0fad908abed4297e36ba4059ef9e6e8a48ca025d634d4f
Date: Tue, 19 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658207212

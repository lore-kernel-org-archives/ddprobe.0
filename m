Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56488A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658901052;
	h=To:Subject:From:Message-Id:Date;
	bh=7dzraVpQpuECFCygPzNVicGnZ5u5lD+xU21ScTAZ6Sc=;
	b=IsRgvpXSeMhXnhyvszfNDSVUA+3g/q/Z1Iuz/a1jkrhEI45C/TgPpgfsXhaBWs5s
	8cBplS+1Cs80OvudKw5QbFzufAbfns0ZvmGUuiUQgCmKm3W2wrNQHZf7BYZ7tyNcWnI
	d0rhgUIEB1HMCDDoP1RGyl9TEHBEzXYMF61skawQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658901052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7dzraVpQpuECFCygPzNVicGnZ5u5lD+xU21ScTAZ6Sc=;
	b=GEbn7EPSRc3HMqPu/BfPZu5694PuD0ELQM6Uyf6PpVzGrIeOGiv0mcmRovfRN1yS
	7pmj7KQyzCaeAjmgEPfzBkV2C/Kfo8qpQXXnvrJqe08bpjkEZIqjhRfNypKghjQrvdy
	FjPjEyKJ1Xq+Z53QxtsY2MULUpe5ZlvP0KxzRHSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e353cc6-93283dc8-366c-4d07-a5c7-2b8afbc27381-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 236d8f8da5f705b7c8b31db7245440be6cadd01d46ac9889a6edcb2537eb1cc0
Date: Wed, 27 Jul 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658901052

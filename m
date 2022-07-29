Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBCD110C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659120652;
	h=To:Subject:From:Message-Id:Date;
	bh=C9M9W2Tt8DZHXpNMx/iLBYR31r9Jz9GmB13Ns3ohbbw=;
	b=BfZG9kqBie+IPJytUN5Ra6NCq7A9ntkZ/nDHC4cVLrH0sOLwG/X8pDMSTt5KgXcc
	V/dj79wZ/tZJUFWMk9XaVj8XV0nHYKzbMUYeSTP8icySWRjjquGPH/FeZJjf0gXJ5w0
	Q6p0+vD24GJI2TpWwtdfzsRe7F5+LJWORrwzE4lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659120652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C9M9W2Tt8DZHXpNMx/iLBYR31r9Jz9GmB13Ns3ohbbw=;
	b=HHDuSjwHv+04jYUY+b8MXDINXybV2SqveX2fq6fCriUvQDG+jfGwEPXHT4kspIJR
	eMSai5BmX3OkayapQYZCK0fzcsVXY19zTMXt9Kv8q30bYaJ+ljfGaIGRosO3B1P/vrN
	x0aJ0epYaPvLMl90fAfYW/uyuj4+coNHCYnGsFf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b4c1110-a73663cc-2339-4a6c-879a-5bc72bf386af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04f05d07c9272691c3a279bbefc4c0a798829e5d4343498a16897d4fb72e8719
Date: Fri, 29 Jul 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659120652

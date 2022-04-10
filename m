Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4E3136D
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 22:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649630278;
	h=To:Subject:From:Message-Id:Date;
	bh=Qvj81UZTWkRLubKHer3B4c9h8FEPWR7lrWae4awhagg=;
	b=ceYnwL9R1vaQqFi+iwOnUVf/E3Pbu2lUBBiZSvPFw3KHLbEgDld74xcaJG7Dide8
	ThAOlOylLMEBCXv1arBcGaNlCuIf8kfI5tT9g1dVpK5kAJm9Krcm1OHteHqrAcCynch
	mkRvhzPLhLS+FHKig1QDlE3R8bAoxtPvcQtn/1gI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649630278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qvj81UZTWkRLubKHer3B4c9h8FEPWR7lrWae4awhagg=;
	b=OaeUy7PgCvAC9rKKSVwl0SK8IlJqwq3q6Ao74cootmvgV+pBvH1OsXs0axZ3/TPQ
	Niq/JyBHtsAMfb5WV8+qcRE58/tF9Vj3fBIUUE41/ZOHrdifdbfXz5rEpM7jPIQXPLa
	7ORgCNHrTSbximYNxkPOxVNafeIIPLYSMUuAcDyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018015a07295-beb12f72-b73e-429e-9f25-4390bec0cc32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5075f8d783c6d8b4bec5f41a077ac69381f5f04cbbd898b0ea028f10074f26a
Date: Sun, 10 Apr 2022 22:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649630278

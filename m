Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B38362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 06:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654842359;
	h=To:Subject:From:Message-Id:Date;
	bh=bwKC/DtZ+SyS6RuUAoUsLtCfoLJSvnmIpahm5cRpUzA=;
	b=HwTufS0b/6SK2iHOAe9ughlmPumQwyh72s9bf74OK5pGZ9asTPbiuEwtVxYXesh0
	bT/zLDY079p68CNMVplSj7VlNZDeaGzX7dXzdwZuQ0WkgWo+sA6n9ZJ7ukOA30OjW5X
	X4Qc6RX7CTnM4dJbWtALYON2Kqvs9QbuVpw0mTRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654842359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bwKC/DtZ+SyS6RuUAoUsLtCfoLJSvnmIpahm5cRpUzA=;
	b=UW33xXjniLZrTX74hYeD18SWM/OKcpTI8noIaWMyrjp+2OzUZjnKSd0MugwJYFX6
	wnPbT1mXo+mpz2IOi9znlhgREtTnbTi5no9ENLD5GY0Kb+y/VZPRpNatam85cKS3os9
	1jdG2gE5ct8np9o+DtamVQUhvze4Cz3ujEgZ6zDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c4a7dd1-5e2935f0-bc37-40b9-be79-82e1faf0847d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3985c347dea0219887670f3e72177d860d7e3c4e94ff77b27dd9d79ce812b1fe
Date: Fri, 10 Jun 2022 06:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654842359

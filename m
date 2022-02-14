Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5086FA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867484;
	h=To:Subject:From:Message-Id:Date;
	bh=rR6GhDnFk5GBGvHMiHpEsaB00MB3/KoxQoBPojYd36g=;
	b=WUrIPlMi47MoN1bvNWQJchOIcSO9ehUa3J6if1QgqO0lNWKnFtbbNS9HIGk39Lja
	3JbA4KSpviv6Hty369pdw/b5PVJveA1czQAmTMGd1rbHC/banHQpHTIwuzXIFiO6x44
	oZiZgW+H6zkt7dc0vXQfEHVuQo+8qr1n3ryjzOv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rR6GhDnFk5GBGvHMiHpEsaB00MB3/KoxQoBPojYd36g=;
	b=GGTr1UBZK7+uqsbfAhJ1FU2T2JbMejFfUOsDKlEVh7m0OvmkOhKQcUmeNT0rgUy0
	A/5vZmcSu2Nrxo/aMOZx4Sm9PoYZY9KXERV6mnf/9Xk5dBckYyUoQEbOz0YWa42FFfB
	KbSkq1TGKUEv9xkLhmLkd78uRFPzSbAzb78E9o4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bdfc1f-af8b99f3-751f-49fb-80f0-b63e25df02fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0437495618005e25ae6964e0c58699ae03b2f25250ae35df96a112b10bd6e95
Date: Mon, 14 Feb 2022 19:38:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867484

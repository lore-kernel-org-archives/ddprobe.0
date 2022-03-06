Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8B010EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646588484;
	h=To:Subject:From:Message-Id:Date;
	bh=NFUoWWbRSupReblrXCCxEQgcs2+Iprelp8FSmTGYXHk=;
	b=BcoAFsNhouXNr/3ZYpEOFY6d877B16DnZs8mtD/LLg0XqB3YjDGohzl1his1sRMQ
	AfOXGsraQAEiBYtppWHUIfO3eBXwwG0KSTYzjsoobMKS5oijUDfN8820ENLO5LN3Gxf
	zq7sREsCzFe4S9d8HGCkFWhTtj4qawgiTM3HqO5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646588484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NFUoWWbRSupReblrXCCxEQgcs2+Iprelp8FSmTGYXHk=;
	b=kBK8PUFPhcNbX5rnfT0SP/hvwLCD5VER0+yvU8HfZ0SKCt0ayPbO5HBhuC5lEtcV
	s2+vwPB3zXwc+CPoeNAXkal8WossVgSnWihyORNahnY9HA2GaLIwRUsQKU0wzD0G9JN
	tHePsrDJ86yoHmXIMeujZdjl+6orZJClg/cR/PYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60525c7f-098b90f4-6c51-4bd3-acbd-2d15c5d1e096-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee8e9bc6f4ea49e81aa03e45be0a688e40046092d3c082c0d1ee35a7f943c97b
Date: Sun, 6 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646588484

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EA33225
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 21:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649971378;
	h=To:Subject:From:Message-Id:Date;
	bh=tZ1UiDrKIotYFAyLAjXGliwJ6IWZQKi8MNr41DvHlak=;
	b=d9QbsbgNx1oxr667AVZtSjGsjsREOL4yBHzTO51f9JWyREKrtha9XFmLn+yhyPP7
	2FwuBQhWwYJyrxz3s6WGgooy77LZA4vxv/u/LjL+RWdotxOfdeYcvl4Bnv2KVvgV2v8
	tBfq6uC9Ehd7vNnGHQNFAS15FxykC/JTmIzfmuUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649971378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZ1UiDrKIotYFAyLAjXGliwJ6IWZQKi8MNr41DvHlak=;
	b=jUFOT6bqv9omSoYfI820vxngoBZQCViDBx2AQMEXl5E3va6fEUvQAuSQIYZxitN9
	NoZn3BA81bDAdxQbEHSY3R7DzeKCxgsjYX4TT+HCNE8C/0eJfVAojAMHm5Y4fEH/lPJ
	fSDzSQncJCGC9HQEZ2Uv7zAZmLOd7PZ4yVWoxsCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029f53872-63788e7d-434e-4834-b31c-a0c808e631bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82f76dbcb06cc9e5913594e861642acfde59729341468125a91f91b1f171d646
Date: Thu, 14 Apr 2022 21:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649971378

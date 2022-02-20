Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933F25A36
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645352785;
	h=To:Subject:From:Message-Id:Date;
	bh=YWNLMAHZ1qW1dIXwV6Angv821DyFZbUKlQRu6jv5fUw=;
	b=eGmagAZpThgQLhni3NllUfqF0Gdj6axxITl134Y+A5pkYdYl+VoHb/lVdoZkrOdR
	pR+fcS8Z0XsrsYRk7SiPf3FEIlWw9oCigeJQqMTxS3rLDcQpvjeHm3vySQrS/xTMmSN
	GRFkYKmb/uPHl3qqmYi4iq1u/uLFW8Ba0ENw2Wbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645352785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YWNLMAHZ1qW1dIXwV6Angv821DyFZbUKlQRu6jv5fUw=;
	b=icBP5bvqVHQzGPpxpFvyb2rC2l9l+f3tSspueEHi1v1KaKcuRG24J87ySMkjwL0S
	HiyVLTqLhfQCeirIj9EaBjfElpHN+nyRaoTzIOxJFBQJXefyU8THC4nc2L5qYiLpb1I
	LFfye50/OyI0+yhtCN3lO3XMPaQ/kHjnrrdaC4vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16ab13d0-3231ac69-2ff9-4767-97b8-5ac982ce7040-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae470e8d89801799b762919e00d2ea7d286485b6966009bd2ef33c2ddaeab6d2
Date: Sun, 20 Feb 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645352784

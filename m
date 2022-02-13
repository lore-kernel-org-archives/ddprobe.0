Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB877C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 08:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644740447;
	h=To:Subject:From:Message-Id:Date;
	bh=8wiMb14nlzNaPAsmPtmCKWA5AmOO6yyyBFAmmbrZReg=;
	b=dU5s7B30ojMqZFctMCSR4hFRp1L3aBCeu0plJYVCjmjWi1jg1Lgcu8Nmshpk8Ceg
	RHykKmkFNMClG7JlZi96NHteM4qFB9gNPj1hNbBPgE+ozRIDDZulYB8dE6ZkaKukCdB
	Z2RbuIij8BzeucMPx+UqgcRr2pVuMMmUWJdW6Yuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644740447;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8wiMb14nlzNaPAsmPtmCKWA5AmOO6yyyBFAmmbrZReg=;
	b=DTvg/4paYpHwfBh5tYOqlz3VN25oB8C1oKiew0o5X2lOgwEDGaR9jFtZ9/wFuM8T
	+94jqo+f0yOSkXZ1PbbWKBBZdBXGUy4s1ma23OZj2vbF211obfw9euOMGdUOTQ+6p23
	st0bk+Lb4TKG0LT9PvNl2OE1w1jX/OWRIRBg29jQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef22b8ced-657ed198-fd36-4022-bdcd-40bb11ae5470-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25b808162bab86a65b313192abe4e1959f02575e37c90e31fe642abf7c562071
Date: Sun, 13 Feb 2022 08:20:47 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644740447

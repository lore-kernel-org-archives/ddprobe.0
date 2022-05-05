Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5E5625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651762018;
	h=To:Subject:From:Message-Id:Date;
	bh=OChQnD6L6plT7Sz1J2d2i8w5ryDn0qMYWrTf+cPrGzA=;
	b=YIfVknVWf0LwV1I3d7wrdoNGpvrRu5HIb0yF5BD6H8ZFEXtyynXJCqh3jdYgh+mh
	X8E+cIh2Mk3sf9F9VAkYPNegYF2aCa3waMQ/zlssTG7cHLKe8+iVsl9Cv5ugX8EuoQz
	jN4QKHrqFyG21l+sPzDitolfq5wuS76gDg+p+8Zw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651762018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OChQnD6L6plT7Sz1J2d2i8w5ryDn0qMYWrTf+cPrGzA=;
	b=c0voWwoy3aV1p/nShrXalA/Q1Y+6wHB2KZ4S0+mmlzH+cMeOcv41KIgjC7bIS4Bm
	Rq9gJK6PG/DTY/SiiwrRtborV231VWuveiQ+C1dFi2UbWjjxsnbI+5H6vuAYqp11GbN
	y+4wyMADvUcpfisJFbbSy2osXE9CZLznH27YbsH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018094b03837-01af3f7f-d500-4fd4-bdd6-6f190c612aad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66d99dcaedca2b5da53d13036757797f485452feb6332b49a543f479465d4028
Date: Thu, 5 May 2022 14:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651762018

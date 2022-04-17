Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9C5367
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 20:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650227818;
	h=To:Subject:From:Message-Id:Date;
	bh=kXM8ML5kOCXUhdvvCwY4wgdFXRG+6Ke+D5EwBrtA4o8=;
	b=NbTOrfkW4/3RlH6Yi6yyLUEj6U+iaETRYl5RgRXb2S9fJeW09DeSUhiiDTmZSLJ/
	Ez9pi8WpQjlDUbDj1vYwUJOvmppNwS2NuLO8wobbsgjev0kc2ERUeOGm3ipoN3hjAGP
	oFZlPjQdks5XnLRZp+c5JPl+pLyq7nCqEtBsE/7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650227818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXM8ML5kOCXUhdvvCwY4wgdFXRG+6Ke+D5EwBrtA4o8=;
	b=Y2WJD1XRjrjTgRyw6obuWiz0OObhKO1IN8UJLJQYUPnROr8aFZu+/ItxRLf2DSG6
	tcI50e1ROZcSJ/zxuGyFO21fRcu7ho1yciDqpTWDQJat9VzEKsw5vFBqR33bpzONIPI
	A+swEzftm+8b91VWKjSMulSwFMSvzOMn/nIq+sCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180393e2f62-199479a5-1630-4895-afe3-5157fc94066f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcd35a360408972c0c05a091243bba71b660cc4c159063a3e28f55113ad3a319
Date: Sun, 17 Apr 2022 20:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650227818

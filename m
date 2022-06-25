Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AA37A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656169612;
	h=To:Subject:From:Message-Id:Date;
	bh=us+EGYVFeePU+m5ykF9GFJErqAmyuzRHOmG85lGIfD0=;
	b=fSz33r4Ki1XPkSY83pbuQbwag013tPNP+Xir3vXqbkyDV7SXLda8Lvb4YCZ1wLfw
	sbLGraoWQOWm2ucIkME74tRIN9zzZSGhxINwVMNuwi7mTDXCvURIovqPWTIz+hMiboz
	i0LYUv+3j+Be5TafQcJxpxffXd85fN7B8+R5BnHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656169612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=us+EGYVFeePU+m5ykF9GFJErqAmyuzRHOmG85lGIfD0=;
	b=gjmLqgVbNrm2PI66qVyb9900cPrHBCGIjj58AFkcZ79cxZZ5TR2pOw6wNRsbowbv
	qs24rtKKWIleYChaQURRMeknJ4Zr8ifEAd1tRdFF6p5S/IvU0Lw5XLyNolZDYu28N89
	7Si+RG8MuuGEjiAsrAi9KBsMz8ibONCVQrHWHaFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b66c424-c4324a79-5969-4d56-b9c1-3e2365ddef19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46b9859b09717fce1b119ed8ee789fdc9f21331bc9946bf1b37b9f75ee6ed614
Date: Sat, 25 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656169612

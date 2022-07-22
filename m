Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3536AD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658521012;
	h=To:Subject:From:Message-Id:Date;
	bh=yCWYqS2xTxvUvgwYRKk4tEElzJ//flUJPGzciOC+JQ0=;
	b=CW47cyiyQt23wdwh4Tn4uBy6Nt7RPGhotizKbZkisQU3c57hD+23PAWo39Hbqz7Y
	KSA6rkp8zljWkyedfmEhs4xEA6oMINtY7X828SECTwcKW5jSE3fI0A2z/seNm4b8Dtx
	oRRsSMZ1CeWoHF3RWaBWqgJzpwUgHEV+NJgPBs5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658521012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yCWYqS2xTxvUvgwYRKk4tEElzJ//flUJPGzciOC+JQ0=;
	b=FacdcPU4Gvf4HCAAPNnv1Hqc6kX57IavS/F20vFEAkkzn00K1XcT1yjiIUGNLBYN
	wKcbuPTwx2+ECfjoynMH3RbFv6zAanKo5EOkYnLOfIsJkOyW3ZX122+/pFn6d/u5hHZ
	7d8Mu8wRI7FQTZiA/jtzDwRrw1VzFiL0ahcNSR8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182278e4833-ad0c1938-add3-47fe-b667-02fe9f2a81cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f004cc0171279530eee3a514f646529e4ce6318bcc4327160af74c5503bbc4ac
Date: Fri, 22 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658521012

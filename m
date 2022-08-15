Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2A71872
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660569652;
	h=To:Subject:From:Message-Id:Date;
	bh=GMzkQlY1z7U1OgM8lO9o4DSA3hqFXxkQmsmM+wqYC7s=;
	b=jsbAjco7Hg3AjVMe/xPnK4mZkh9US8RG+bDQSD7ViPHIcidwCtFnz54HSYYfyBG0
	cuj+T58wmggDqFL/ftSNxPzu3AmXchE5vUOLw0gxdZ2RpfCBF5Ey0xT+eX+3yz+5TV/
	YCDcHXESRIwjHJQ4I7LKt0HZk/T0Ds+d/Wxosc0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660569652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GMzkQlY1z7U1OgM8lO9o4DSA3hqFXxkQmsmM+wqYC7s=;
	b=SxpHTxOqibou1s4OHKasyFphkxKHIhiJvFX6UZOppuqGt5DoMu6SezyRJc5msMHO
	xTsOTrI+dXpfhHeFSyv5obtFB4uB8sEdCL4C8wBTD8ixHwtps1Dl+55iH3epOB8mUOo
	iNySG/PtfRRxRvCFO2q/23t5EGnXe4jdssu4jipo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1aa0d33-bf58819a-d2a1-4eb4-85ca-538820184f19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49999ea21c65645094621f46ba74b53b2313aeaeeced211588ed3338206ae897
Date: Mon, 15 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660569652

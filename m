Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B47C1366
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 10:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652782919;
	h=To:Subject:From:Message-Id:Date;
	bh=tkmdH26m5k7gIc3MweQCuPBe/4O4xu72S71HxcV4gP8=;
	b=V939uS+1bg7hc8z1Y/sPQAQzUMnHmn472yJHH1z6r14Yu+c2uobdwVmaCs3ph/lH
	0MU/BsDIBcxnO29dZ2K9ivQOPb1+/b5cHhprA2u+QuIhZevFZWJ1KMn1dgMXIFa8vR+
	HiTNs3kHvQ5TV1vzay40Aa7dgXY1vhv1c6ZCfQfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652782919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tkmdH26m5k7gIc3MweQCuPBe/4O4xu72S71HxcV4gP8=;
	b=COtqBfF2oRKNyKQRJ6DPyF817KvqpzyvwCrGvg1v198NYEg3W6arX0H0Q4WRS3jh
	RQqSdr5bS7b8Fksw1aHZsy+FRwogOQr2WFR/z/FZcPTzP0xY2p03mS2SjCW7Ly6Apt6
	QeGocDe9xUrOG4EgqoAYD+z/UoOIzqcN1C4doPRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d189ee90-c2c800f9-2f1f-43f6-9ca2-8ba808fc76bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab43a8653d4a544c35dd2f0346a4b084ec2dec718497e978c64e5b780c32dcc3
Date: Tue, 17 May 2022 10:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652782919

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3CC180
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658669212;
	h=To:Subject:From:Message-Id:Date;
	bh=UyLNM2gNoLCGi1hTJdb+Ypz2n/rQMm6KptfgBlfjapI=;
	b=kpkYxUXsCJ83uyWnFO/7uI1KMCiKjdshpEiuEwAKa/yWu4lZ0FDUu5qcwFqBhUC+
	w82pre80Kva/pSBEGlzhowjL9nj9cQlRhSjFqoZ5HzGbf9OWcuRZoFrJxUp758JM+6j
	mLtA8LrXDy6yJf17e1SVjTFRMqFh6B8N6xmKiBDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658669212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UyLNM2gNoLCGi1hTJdb+Ypz2n/rQMm6KptfgBlfjapI=;
	b=Tf6craOdAbWxDFBt98LRIIUyjhsEzVhtcpnyMjtdLEdzg0tM8dhlx+l0SiXEbPD1
	kXjmklEWmPYj16INps1y9NKMtF3io4Hrxv2mE0Dn7f1iUiXZtxh/E0TkVuLbOCBVCSB
	q9n55JWiNBRd6pLHR3Q7RjR9MrCpFE9sxCThXJYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823063a259-20a3a47d-9792-405c-b995-b82bfe1c08bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c183be14d7f9e88d35f0c60cb1616df36247e8eed7f36c73c9dc13f04a5eac18
Date: Sun, 24 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658669212

Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026527FF
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 04:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653453059;
	h=To:Subject:From:Message-Id:Date;
	bh=ILmK3vg+Pd1heCt9hqbqzVLIf6CCdW3Y0goiQrqgCAw=;
	b=gBja1Zg2suvJJ0YkLok1gBin5MNNhA0MjQRj3GbkK7iLdrqX6lFg+1dlSedvWewe
	xFKGQQTqdIl7LK3Sfj58deTHrVsa8fSbS/WnaqzxgolE7mUpUWjtFYtgwdEzWHheW+0
	0/E/lqmK02wgl7L9XcuelAQnA9sraIhsjC3KByYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653453059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ILmK3vg+Pd1heCt9hqbqzVLIf6CCdW3Y0goiQrqgCAw=;
	b=ATVB+8zRt8mbuxhP0L2BTUhQRHgwOBWTBLC/O4vnY6ZcrqS+12T5hJfKUiEKPy5w
	mYYRsbbpIdYfBZJVAvPycO/OHo3KEbX6CWJiGIEQBtRKdylUD1eiujzIEmmJSuwbr/G
	02pHd7Vib2XmG97FVS2hkwNYu3W1TTVipxEha4p0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f97b74ea-1924ad8a-baeb-4509-bdc0-23cd86a5dfa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15a84159d8d30f9b44ec4c4679374e4d17fe47b9be05fbd0e5bd8f90d4ea0523
Date: Wed, 25 May 2022 04:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653453059

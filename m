Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05074ABB
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647559585;
	h=To:Subject:From:Message-Id:Date;
	bh=T/WaNmaa1vwjQEXhqhjjWn1VsctCuJYmUg3f9M+vPig=;
	b=EOCQEAKbXmvYFE4fi33fJzdan9VBQxC9dEm/wbrFRNCHKNaHSFahP9uZq5Bs3j4H
	c9YEJn3eSaJsUZXMNkJ7PNrc3UFFutv4UAcfRfbvyp4Rhdwsy/+eUNXw2I6bNa+wT73
	rVAoRmXsxifTRYAZ7ATW3/dEcOPnwUf8PxM9zcqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647559585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T/WaNmaa1vwjQEXhqhjjWn1VsctCuJYmUg3f9M+vPig=;
	b=CtYNluEh71em754ylvgwx1gAj/TTXSGzs8rXnnv+VkkuJtS9g3U7oko9Bv2jXN2F
	Nqbl6Ual4yBjXhLbp9GZRoyMIyf+riNg0XqPRs9rdTCqcU3AAySwZydoab490YueqpM
	29YyK7/Qto9Ivvp/PfvE8uuabwSppzGkKmiYCxlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a342beb-0b570e3c-04eb-4dec-955c-8a6d8d86ed4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c626569a2278c7d90b8144bc1ed35e6dfb18e9c55abab5fd67c183dac6a12aed
Date: Thu, 17 Mar 2022 23:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647559584

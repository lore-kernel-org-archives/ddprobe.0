Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEAF7F
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 00:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651795978;
	h=To:Subject:From:Message-Id:Date;
	bh=O7RZBfHTwrE6+UYjdAET83dOwR5RJMHn1heYjF5xvsE=;
	b=RhFV0C6UAhsWDwW+eu3XcDJjFRuSFjoQhOB/nsR7dDkFW/mhWtrA964oVC9fuIjt
	uNdIaw/8KxceLFh2Vg3Wk/hYiENl68rhulSP3Cs0cFaFPglNQteT+Mu9pVCxUWKlH9x
	BsStgtIb0zlCzNcMFwJwHBorYROtfxLkaUjzEdqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651795978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O7RZBfHTwrE6+UYjdAET83dOwR5RJMHn1heYjF5xvsE=;
	b=GjmZD7gnghGJPQ1b5NRVqMgE6Ixnpfr4Jk3vMxzFJ1e1uWbZabVnp87iVAaecyUN
	Z+5gvHMj+9uMqc4ZfzYQ52EUg/IxW0MqmPbBnh9XXRQm0Hel3mFtvA0UcVOty+D5bfl
	6YRn7Ux07fUHVsyADADPvdkY4bRAb4aAwWi63bVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018096b6680e-fa88f3c5-23c3-4494-9d01-0a4cd4fb691c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12031d54aa69579ff90c63adfb04a58405f2d0d3721831b53c6f125fb3179c5f
Date: Fri, 6 May 2022 00:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651795978

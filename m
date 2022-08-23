Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6167F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661217053;
	h=To:Subject:From:Message-Id:Date;
	bh=O8joCYtdUNYyJ6hgK4gXrZidnWe4rmL8BJYy7AfoGfo=;
	b=DTHUHIpeW8rzm2ABJx1kjc5tqTqug6FgROQGmccEwbhqT1iRSTtNYeqPJnAuR9TB
	XoPmb6A8H8zHc0N/I7fAPamj561Qzb2aDdyY8GsbGq0TRScdceGOttziLGVNaUst863
	hU6+eJ5QD9MNgL/j4zj0dl7HjnMZkc9j2KnndI+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661217053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O8joCYtdUNYyJ6hgK4gXrZidnWe4rmL8BJYy7AfoGfo=;
	b=PKrbi5L7NR22nFe/qGhWDjNVj6lkh/3mMrU+3j9B1xOAEvmQ7MrYRduzUq3mznZx
	q0HP+vXmMM6dYmW3KDPGQmw06PgQPuGUhUmM0hidTQyMBBsHGR5gthh8Yzuu38WibqN
	gB0v8PptND3xYeaTrdc+Q4OeG9I5aw1fQ8MEFopc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8409817-2179d1cf-9f1d-430e-9b48-93c0d72ee375-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efa930cd8562e4fc9b7f0016572012d57501eee4f493f017187550431e312056
Date: Tue, 23 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661217052

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1533E7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 06:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654843679;
	h=To:Subject:From:Message-Id:Date;
	bh=Ie8+ObqbdlYFaz42PyjX7Jc9PhHNs6kzLPGaAWJzz6A=;
	b=Rl7bYQpZHHy9qytn5ASB1mIt1ZwZH8brmXSRSoV6j8mppTIZJzpyVAw3kU9mZkNZ
	s+KMkQCUSFjFSpx2e7hlUhvK+/rSGXWWDhYUBEYM5ft7mXLSBa85dKUZfDFRY7OEvLK
	E2An9ewZ+fJPpSxVGEeYCEgr5/LzWu4+qc5gKW5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654843679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ie8+ObqbdlYFaz42PyjX7Jc9PhHNs6kzLPGaAWJzz6A=;
	b=bblfBbqmGkjmUUToCpM4hxgsPRzTdrKMXNsauZ4GbqdBhWdyQjdZ4kBx6pS4xOuG
	dNVgqYovdUWCiZQ2jxuuQAKCLEvAVSmwyYtmGzrSOx5kPOr2PgoAFUaz/nQsofMMkrF
	++RbvkLdh0PTh18o2AOaOSJhUEmwfYc04tF1084c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c5ea254-e0941b10-2e37-4dc1-892b-f04b67ce73fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e571e65ebb3110cd0730c8d40d10141f0ab10e96c0edef027841fe15f234e1f
Date: Fri, 10 Jun 2022 06:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654843679

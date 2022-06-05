Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CD51840
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 02:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654396319;
	h=To:Subject:From:Message-Id:Date;
	bh=xXC0vXLiZK7WNFi3NhvvT3bgOlEwTvf56DGx9CZ6dyM=;
	b=Y8vT7rC6esP4hgfeIZbHkRHlMyBJ+zWNvJRm/AgUx8XTKQVVDNdf6Yt/aTgYJBo+
	JdHhogv89s36vc4IuYikUL1YwHqZmN0m2+Cy0m2m5XiEHfEfvjOO6ntSCpX8T+XOaxS
	TER0UjY0s/bOzh+N4jw6ObLTDpVuvQ+/rGlzA17U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654396319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xXC0vXLiZK7WNFi3NhvvT3bgOlEwTvf56DGx9CZ6dyM=;
	b=RXwbEhfeskfDjga/iKCAvAFyc4I72Cf1+jpNncnq6/NKtj2LZL9UEdM1DsCzEjsT
	guJUht/QfVQyQh5yZh9WrrSqICcYEc0NbP2rb15OjaROJaujj3X5XVC2vIsmL6qWpbT
	DIBBU8UG68svzFyA5pPyc22diPwOQBg49e0V1sPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018131b47608-8946655e-403e-4548-84e9-b04cd98da282-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 058d30bb4cab7d6d71c261991b184f700c6aa6eafd43fc1b23bfbd19af4bb543
Date: Sun, 5 Jun 2022 02:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654396319

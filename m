Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F50F1FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656838612;
	h=To:Subject:From:Message-Id:Date;
	bh=Do75dWJP//7Gn8SkPtPHHMMrgOHXikwQO/aYAAEx30w=;
	b=a+6XcCqvLbYl9oMSwW0+Pfbnp7YlctK/M4U+Nb7p7h2/+N3eVz7DzOyAav+wehZ3
	Oc/fi6dfDDORDWrMPPHhEXryhSwmwAYYGBoVH8bT4OR+Lx1D5gswaxiK+zhJrHo75Zs
	34PtZFVLgZlRiOFcDOOfMV0OqHUb/OPPgts8693g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656838612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Do75dWJP//7Gn8SkPtPHHMMrgOHXikwQO/aYAAEx30w=;
	b=QF9WUe+N/+9W3Gsi+Yzw92x9ik61+xT6P+/FG7phqvDZqJJgmohxj7TzLKWFaEfL
	UxaBW18g8WHwb7t+ijsWTx/NkV6X8ochODOwsDPrFkR2TO4GBx2P2ZckwMrsANDfX5P
	Txkz6JniEJhkYiJoNQf/Mjr2CN/Y5mWzsJHM4u9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c346e545-de15ca5b-7912-40c8-9b64-5fbd37801217-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81ec1b1ff559cd9b0d4cf0e867f66d0188fe3e250992622cfcc418b909e03763
Date: Sun, 3 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656838612

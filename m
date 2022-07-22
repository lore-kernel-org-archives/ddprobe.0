Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C39715A5
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658462812;
	h=To:Subject:From:Message-Id:Date;
	bh=z8PdT0audQRV9p+qtt+sjGTQ2AA6wImOMQm7keo/AAc=;
	b=Y1sgMcDXldfvElzphc9ZQxLE9sMADptZK+iuXK2LjUsGsT12jHkX7E7HhrpmzKiv
	r6Qr1WuduGinChGgOrouGszCTnRE/22L1g205WdKWI173JRoOgjtqvYGZiaQB8wcD/b
	M9QBTyJM0FJI6qh5k+15jRUlbTYjhQXJ2IyPYr/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658462812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z8PdT0audQRV9p+qtt+sjGTQ2AA6wImOMQm7keo/AAc=;
	b=bTLgcJ8qSMrUZ6U374sauTxVGT9BwWLPI/aiwB47cqvGH36+U//ipRvx/4iAgi3E
	5G9yK/Vgm6qS5jbaTsnkscBmHprFFOGJB9ibVmGDErs/ssPHd8gesN5BL/hSmhARfwP
	YXK1AvS+0K3lolRhXXPLbkw5+G/094oMrxuMJIHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182241638c8-faa20498-dec9-45a5-ab88-53b2a88cf452-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7931e423a40a7393e088368abcd847833dd6429338b03480fb80932a4cccde68
Date: Fri, 22 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658462812

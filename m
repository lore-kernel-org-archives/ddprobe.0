Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093A37A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 22:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652480099;
	h=To:Subject:From:Message-Id:Date;
	bh=RwYRgVADsjV0YHAGVWooRiv7kRUpvhvD1Zcxjwpbk8I=;
	b=k6p5hC/9HcAkq3dsKAa9h9XwyArstjlb7kgyvpZivncGqvrDT/qFyB92tCIZiIuS
	VtxzEyH/qvM5pTiv89kSz4GNsdMgpmc66m1wVWyNCFAVcT+g5nCF+10ULnK9bosxaxj
	JO16oXuiQ2VFPP4DY4v4ikBy5OklZTSJCrASywVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652480099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RwYRgVADsjV0YHAGVWooRiv7kRUpvhvD1Zcxjwpbk8I=;
	b=NngWv07JN8RS8nc2LZm+axGxw3nwSyFgNyckBuh1qCJ97reQBCe+KhShNy7eQDQu
	Y4R6fMJuzWi/yZUaRmCL0pD8WPFLBhsSfuel//AeN/6ZzyaKJGx/KLEzOy6+N+rWNdM
	8rz9aHxi4ZKnnrdJmIvX2UDe8ARlxK0RAuTR+hlI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf7d43fd-d1c901b1-9dee-434e-a369-61832ecd7c68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4e440e6932deaf3198418a1593f2c2b5217e78370647d6d08ae2c074573e74a
Date: Fri, 13 May 2022 22:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652480099

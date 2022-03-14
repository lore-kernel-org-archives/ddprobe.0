Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA851B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647271884;
	h=To:Subject:From:Message-Id:Date;
	bh=bE4xjOS1OEH7W9tB4blNiwvC/RWcmXH41AYf/sWURCA=;
	b=ASI3pCNlLDf/WesQAjGQ8o1KGAsTcJT92D6xfbmBgYX9cTCV9opiqIYKJjr2w1jT
	3L6z/Io/cAQJIN/rUe3sT+mPCfv5/6TyyUhRRuBl1eGZV9bezY/iCdv3kvaidt4Yk/Z
	RZWcpGPf2v+KiGgck/6sper6C/wGJ2AvVjaQbAbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647271884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bE4xjOS1OEH7W9tB4blNiwvC/RWcmXH41AYf/sWURCA=;
	b=EutN5tUVbjQ6jbiMLzLo0BYf+HW4UA3jSGVzVFq0FELTgVfdx8wYyK07pDfGwtzP
	wUu4hOYON2Aan7pkjzMmyRbw3CNha+ED5Dl1xVw8MhQDeZ5E/j7ss2jUaBi3EEh+k3W
	14gDgQGxRe/ES57IwLf/YAJVl5gjS5qk1pW+Da9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f890e37e3-63ef64d7-9c36-4b6d-b33b-57638f844312-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebb66b76f76a2990b02ded1f015822233d90d43aba7be02497b99a555397194b
Date: Mon, 14 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647271884

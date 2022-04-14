Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4754115A6
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 05:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649915578;
	h=To:Subject:From:Message-Id:Date;
	bh=tdVlbAgsEHKJFGO9YyomSwyLhJQW6UEuAVcLBkq32kA=;
	b=NleU1yYOZOLHzkyYoQQAjZ9CCB2u0d+UNHbD6sg3emKj3I/NLjv84vZs2mPLQedg
	aaY+x2ElF6ol4tGZiBC9tRVdJmxF0/84dB4RLDoeOaUvbrloD48M4mUqvglKReNtQbt
	dT2YQp047HXy4cCE6+dYpgk/5EBSWyZWn+p6WNj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649915578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tdVlbAgsEHKJFGO9YyomSwyLhJQW6UEuAVcLBkq32kA=;
	b=Xs6iwJwG4M/YuPhkyyVF5zglRwJqzKHADrFCOmHB7Zr7wQNV0QhFfoFb51SY1b/y
	V0gWepSgLO6ZTSeOJ+XywV0WF3FVImXT9z2V9awYx/MhHXQMzSXUxujtq9BDlQ7MCLZ
	sIb4goJ6flmEsaXkxJi1vT3DM0B1m0XPxENt4bZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018026a1c7c7-3fdc606c-a05f-414c-80f6-b670c4c6406c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e38f3b3be7e4b195b5ec8dbdb6306792e1112c7d33e91b28e43d5903b70536b
Date: Thu, 14 Apr 2022 05:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649915578

Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7B92F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645972885;
	h=To:Subject:From:Message-Id:Date;
	bh=04KhgEN5CJdjeTwA3UUXLcLk539w+eq912FqG7U2v+0=;
	b=SJQ7+YwiNJmGb3viGO1KaTCxptJMJwF8ibB76QoToMB1QC+P3B6AAXG4JGGK3L9O
	3UFtEzM5zWuxO/e+N2d9a9dwNmA4cLMVLbgeIzh5JC0K+NIwphcbXEAZY4OTexgTa8h
	Hf66wO4gq9FP0Jquxlh0Ld6HEUrUt+aog+6//q1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645972885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=04KhgEN5CJdjeTwA3UUXLcLk539w+eq912FqG7U2v+0=;
	b=JlxCwBJghO1Fam8UcblBKlVgTxi0bTdT3k7LYJjfklpyumUW2Sl54Tf4DeMtcO3l
	cluLhjLcA/whu0xWrDPeBRlvRj7dUgzhm/2J0xmMBTmsb42ZiQIEmitt4TIHrqMVxFu
	FssKrIHCwegUKIhWWAyhOHvCBeQ9LZNolJQG96YA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ba10d2f-cd2db362-549b-4124-84e4-b4a783922034-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 380903f5c02bdd3475d056a4cacd5932226a9b8c194ad11e2b837a5acd0f4f57
Date: Sun, 27 Feb 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645972884

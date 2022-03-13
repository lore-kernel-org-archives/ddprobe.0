Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D277E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647179484;
	h=To:Subject:From:Message-Id:Date;
	bh=jY7dQEcw3Q/Tn8fMYuNjlNPd6PFuAzBClIqecQbjcH4=;
	b=MR47qykBblhYmQW0Vqu1/9GUl7hXf9HOMFkLnFCQxu2JDV86YB4+V2LY/UP3i93U
	MPAk2LKVKWrzBbo4uH5rqE5Z1ndrGjyzX+n188FxT8KfOWIeWBmHZNgEQkhTtywwEs0
	YaJ/HKKba5oXY6bf7pgF7s1QE73ehgxnzekPcMZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647179484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jY7dQEcw3Q/Tn8fMYuNjlNPd6PFuAzBClIqecQbjcH4=;
	b=Xv/Nt1FZYMvo1PVePUd6wsKw5Y1Q2PTuL2BYR1YruE1xTzU7Edqiiv5Z0/9g/Ws8
	53EuCGrJqR/nFxh9R1dyDtfif81jWlbBemj2kTWLWHZ8nypIJ/i7hSSjP0VvMsOOjCA
	R3tFmEo+CxU8r+p3rC4DofHDRd8RIS4AsqCLyc00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f838c4e31-e3a16def-b21d-4bd2-bbe6-fc38124e15ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdea0e1d60487b97e738a64da17fd406565636a3f534901deedd5acca3ea39a2
Date: Sun, 13 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647179484

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159221866
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 11:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652874059;
	h=To:Subject:From:Message-Id:Date;
	bh=25VWRPVgOgOsq1XG0yeGK4wZ7cGnSls/ur1JJ2omPP0=;
	b=ieZME8qpVs6ELpcRM8YKOshgOR0qsQmh3X9l6a0d7fgCE1AKVPmauCUBw5w7zDAV
	2A8Z8Z9VPMIGJl6cJHFMpuY5qhvcwsmdTvE360Zm9FKaDJHajkf8bE4AETrjtENXSxI
	CNQqHjWgJg7KYw46kZCo34Oo3hxYNJQ/AZojou+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652874059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=25VWRPVgOgOsq1XG0yeGK4wZ7cGnSls/ur1JJ2omPP0=;
	b=fVMu6ZSwidrxUABn6XRHDcAZD3/zz60x71I4ZYxcRZh1BbIOUwNF3guMFrXLGUJE
	FI0hWbFG6CKj+fXH+nAvjUk3YdCNTVqEaTVXsyGfF4JCwC52XLZj957iYj57SLQmDs1
	KuseTsiv0ZNaZadLY3ULKYsOxWTfVWhcfzNIlJ6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d6f89e70-9eeeba07-08d1-4fb5-a6f4-7f8d938a2335-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 297ca60f2fb7959495d6b67b856b3c4b75fb9f47fd1b0ec9274c6f8dddbca730
Date: Wed, 18 May 2022 11:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652874059

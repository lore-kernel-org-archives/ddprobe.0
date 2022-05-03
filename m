Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312332F2B
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651579498;
	h=To:Subject:From:Message-Id:Date;
	bh=riEtdfqAAIA2AjmvHvQdKoo4Iad2UzsHA4MHs5/Aqw0=;
	b=flzysV12Bw8zf5fpiQk8EW9zpXIirFgG8WkHCAGjmm+yZl1sEbwl/7fvdGhiIl+v
	pEHqmrG7SOSoe6pKDj7fajApV57PLLqdavsBKxlTnQmrjr9H5tYTokfuZxcE4fN0uKM
	FvtY/4IKjHn5pKBlJoFmEurmjtNkWGOH9vNQhLHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651579498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=riEtdfqAAIA2AjmvHvQdKoo4Iad2UzsHA4MHs5/Aqw0=;
	b=HwmOS/52ZH6GmPF7GHMPArR7B6HKFb7UZr9xsOGSnjKetLryTA0JDXj1D1L+7yWD
	JIKCJaW30Jg/UKve0/+G+pr59gkLlHNTkLKRMk2rlpEjcAfn7LRwwo1AaRs+7leHULS
	x0EHVyBkTWZH1VZzkARtEYAcor8OmakvcZqeaL1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089cf2f33-c92fdb27-5b8a-4f49-b6ec-8f660f06ff0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f38625ff52f21266418ce7353c0051e8ef042e76725b60883059c9e52881aa4
Date: Tue, 3 May 2022 12:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651579498

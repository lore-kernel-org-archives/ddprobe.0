Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12C33D7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 22:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654985279;
	h=To:Subject:From:Message-Id:Date;
	bh=m5bv9YXnVcO5+Hnw7Z5K7LK/UebGDpFESsE+qSpUNwU=;
	b=L4lQxe0d9qiEb39/VGb+NeTOYybqb+4tezZNoNNg8/rnFE+hsNHHK8acV8U4RtHv
	HM/SyK5cniFkitwpcYvk0bbF/qe0f2V5jFIQIh3bK7ufPFbsX9qb64Xk/iLyoDvQWKR
	3c9YxQyeTDWzs9FpG4K09iS6jVsXnZMBswRKQBkI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654985279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m5bv9YXnVcO5+Hnw7Z5K7LK/UebGDpFESsE+qSpUNwU=;
	b=gNgWUdSCPCqYfF0PT5ORl8a8db40uj2pJoY1DhVZkSqEn8DuhBicIZOJJn4SNAp1
	TMqvkMjKUTad8LGhvVYs36ZCX9Z57MlJ1YH0a5FntqVFGcyCZPyEOYCfgeVAqU2BQrL
	v8QKpyMnP+xMzuk1zBFkpjMnFd+N7vjvr0yjjpC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018154cf471e-9d501df1-0c04-4961-8d13-647e98748f01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 551b81c8c28ec9a8305b0fa4f83a04649bc2bf770a7fa3b733416b099cc44a29
Date: Sat, 11 Jun 2022 22:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654985279

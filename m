Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6318B3663
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647382284;
	h=To:Subject:From:Message-Id:Date;
	bh=VdL5umu1xZVgwQxqRwmEE+CJALIccX7DAZ2Y7ui7Zvw=;
	b=k7umIWgd/eXj1ENvMW8ewVME8Gzgg2b2asfhi39R87vdJLcQ8xzC7OywEBjl1ZDe
	sRhISl8n6uaLTKI7GPs1RTUWuaBw+E/NNLoRtt4eYvnVEhJTvxbH33/rk8rQ86D3wxL
	1lISSheZb1BgcziuMPCDQ723hR4DL3tfkcU8ugn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647382284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VdL5umu1xZVgwQxqRwmEE+CJALIccX7DAZ2Y7ui7Zvw=;
	b=heZyIfePuFds71GOExJ1a5ECUIJMLoZePTlvGwratVfZVQgHl6FIKiaPvpYqoCNG
	uSBWqXNqSGRwWfm2tCIXhalMkRBIgoTsu5sH0u7ddtoHWcbDj0CpSWZ909EOPUuXgmp
	nRVkz9oiuJVxXt9WyC/Gt4zxZ+m2ktQPzLgcCibM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fa2c9f5-f0f9722a-ad2b-4fca-a191-64ce273b8b93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5aa2052361a64a9a06f206f08e807b73d0fc038a353df2a6120a287e7a7ba3b
Date: Tue, 15 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647382284

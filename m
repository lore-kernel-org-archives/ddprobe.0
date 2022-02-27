Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876A32F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645956385;
	h=To:Subject:From:Message-Id:Date;
	bh=eA3hG42s+mjRVyAc27/V2pzX3rhBQezU0T9x0ot1JWU=;
	b=A9SippKwV3NhgNl1HT5jTmN5j0M4Uq2FyxEM5jXhkYzom9Q4jX/wE5p51rIV7twq
	kHEH3mpAr4HTWn5genPbcQTHUk8BitwHqrQ/gqKIkKXYFCgYn8N2Dx/zyScLgxn8DYL
	6ntZRYVADWmp0/X1BgQqo3k1rXYZ2NBrdMki3uC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645956385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eA3hG42s+mjRVyAc27/V2pzX3rhBQezU0T9x0ot1JWU=;
	b=O1hoVnR2fa2l/kkot7e1fek6yx09kwrsYvWxXE2VTgzIyGt11DqIhx24Dq8dBU86
	wu/hXaeeseTqBFEEFCk+cCbKtkLg2q7g0dOT7iFUXOcrFBSNnuYqT/HOUx2BaPZ1Rqg
	HSFV+pPOxIc+PlJOFVFfPzQsgX8xAq1lka5v/eUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3aa5480f-5fb6f9ba-f64f-4e76-b67c-89ba5f6d892e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c096f565d020298aee594170f7646a5182c5e6d0c9a62a552fcce551ce0b6ab8
Date: Sun, 27 Feb 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645956384

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52475179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645339584;
	h=To:Subject:From:Message-Id:Date;
	bh=tnrwyih3B9Fx02fVFPKqODS3QeKBgmtYNMuUID6bdJ0=;
	b=IQeB3W8lEdocBQKgxoro0znqqT1IOdmJPy3gcqR9yLdl0Y+QTllxkVEOvrwp9UQU
	F2K34nMOa87REnR2/M2RVQruQBBK6q9glmYgUwlK2nKngJ3I/nLjtp1DG/ywWFplvyf
	N8Em4P0AZimWparZF+NtepqMcvdHkXVNBA1Dwo/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645339584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tnrwyih3B9Fx02fVFPKqODS3QeKBgmtYNMuUID6bdJ0=;
	b=EDcwz+NcaYKnbvJ3QdyWIvIMb/FQWFwbkWbEgLikvtNjj+81uhDGMqiESKxHvkg7
	N/S7ET9XGCWk+7H1MWjWR4usEw3gyYJtsxxWK3MgyfNbyY4AIQ2M6sjFpZBu4WnA5kB
	1+iqBmIXdajSNvJcV3MpfkpnzWP4i6yUFp5eNelM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15e1a8fd-0064583d-2a9c-4d0b-baca-f7d9be043e33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c15aad6b818faf07624c722cc38a25e7c855bb4c7f793d5cf4c32a17318381a
Date: Sun, 20 Feb 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645339584

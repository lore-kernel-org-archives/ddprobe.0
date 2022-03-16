Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB961FB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647408085;
	h=To:Subject:From:Message-Id:Date;
	bh=8D0tWs+25h61I0CpfNXYiNwFvldHL1xWnKWWlNgDEpU=;
	b=a8clYCDuPRGSILe55ZDpO61oVpsu0H4w6G/YXa3h6SQC2+4k4X7KLK/lpc72XoIY
	ph9zNDn2U3pC3L4eStJC+0+tMgSclpztyXcTj6+QUFQQpbZU2KvS3PV2E4mJPps1uLq
	7fldBegEP8cTP7HDTBeG1YjWDaAFZdIfL/LhJdRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647408085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8D0tWs+25h61I0CpfNXYiNwFvldHL1xWnKWWlNgDEpU=;
	b=T7nzgYbW0MQzROK+BmkgkNBYgdTUqQcW2ellWdDQbrMww9/loz35RQOPHIDHCaqN
	8SiC9UuTXrK5GlV6y9au66s6RuNF2K+qtTeWrPR7517MMELkog0hVMAtCt+9j7BMDkW
	LHfEhwq8PaQEL6Xb0Y8DWcjR+tb+Qb7H5ejwUAYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f912c76e3-c4b5f20c-8695-442d-b187-e2c61790d966-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d7a6e63300e3ffb99b1d1c50e63693ce78dc84ca5592aad07d9ca67ca6b77cc
Date: Wed, 16 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647408084

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FFE2FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647418585;
	h=To:Subject:From:Message-Id:Date;
	bh=tNOXXc2ihcK141H32ZcFOhPwkBoRW44f79qrnPzIRwQ=;
	b=XbHBxtbvqQPqmyQ+GE3FxzyrZWWMJLD3NLwrYwtXQSMRzMMKITKVrs9ozXmKD981
	cmqcaSWGfxvpuJkwRdTseeDnOEG6OZ1cRA3LonbFONKbry31enuikqUts46s4mkdhAT
	6fouMCUuvrGpNdRY+5Fw8s+uQAfPmet9H/n8zORk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647418585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tNOXXc2ihcK141H32ZcFOhPwkBoRW44f79qrnPzIRwQ=;
	b=ifk2h2ecqMB1IIY+x8Pg46O2PQpMwfz64bPa9Xzcpg9gjJ5hSxOaSB1wfeTQa1bv
	EwFaK7PeMznoLyzdoO5YfTb/IOy7J2LH4ZppeGegtXw3oLIAhQs5PGP4Tgb43lDcj3C
	qmy6/37dtlEJMk+TcWMe+NTmbV40CptgjRM83NhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91ccae9b-4cb55329-cf5e-4975-ac7c-ed30b94a9e36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 189226fa3468f8f945c9a6139d44e3f9f31c4c90f02ac58a34131962b0cb5f98
Date: Wed, 16 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647418584

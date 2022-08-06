Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4777E1114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659777052;
	h=To:Subject:From:Message-Id:Date;
	bh=NmfyyKb8FVlWiNDmLUc86dvSSB8hymhfweNO6NGenmg=;
	b=EDRLNEZPVwSldct3z/jEca1KxRhq/XpeJclvXKog/PR5HB2ySRrUhceN+qcluvOi
	pO/4T6oCX2B57QAy9GPzw9QcZS8rOd+gB+4QX8u70dFgb0F6bk2mL6Vv0yEfGffzBoi
	S4h4kbGoVQiFqlTBV2QYBefY+QdjY+a0GSbPoLhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659777052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NmfyyKb8FVlWiNDmLUc86dvSSB8hymhfweNO6NGenmg=;
	b=PwyHLkPqsbM8Gl8B10wzVwyqFeoMvC9skVivZxjarQ3ZGq+n2gmZ1mb57Rxsa3fz
	JoXid3Rg8xKWDGKFZXMS7Ssxkv3RN9S7IbcC+Gb9EzIkoEsReHHpsQOu982RGH9Tfor
	LpzsLnBSYzZtwxDSNvZzbf2I4+mTg/fe4RVT4SKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182726bef6c-7e927cd8-3ae0-4896-9624-979292e1bcb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac351887da893c1821abb75fd01b199a8c3253fb7fe271fb33512491bae06a72
Date: Sat, 6 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659777052

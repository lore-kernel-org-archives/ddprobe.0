Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776CB2597
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659559252;
	h=To:Subject:From:Message-Id:Date;
	bh=zXXlicP4J30ZAKJGqaDCsYDHu5Ac3vdULuY11m5K3YA=;
	b=iEM9RA5jKTjAqiTIGNuvUoc5rkTzNVu2nAhFs5WKuhYyC3A54D8IklMgxIP2ACvS
	NFP7txoAAtC7kaug3JGDKHX3muIIohgd8Qc5bESosR/1zFA/T9R5jxIht0pXHQWYA5K
	KoGYhZUrI+peq1UkIubCIoHGB8s7FDPK9SwAA0Hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659559252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXXlicP4J30ZAKJGqaDCsYDHu5Ac3vdULuY11m5K3YA=;
	b=OSf2hBJmw3TuEoqGDsYOjkGyBcc+N5OpbrL166M1KJkqe32LmOiLsHRACPJHlozc
	yyXK6WugVwOR/JJEeb5v0VDA49nLJTV/MUGp4Jj208ikbkrvhZd5ht8PjZ0BKXZrBaL
	xP9zA8TWAG+uYZUvkw06FXDOjSsrs1urOYV/2eC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265709266-42925c7f-0c74-46c9-b41e-b887231e56e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88eeb7efce964c7079f20c751a393942554341adf31ddec28e1a08e1bf533281
Date: Wed, 3 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659559252

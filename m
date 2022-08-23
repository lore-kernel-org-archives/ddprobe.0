Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D093E7E0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661279453;
	h=To:Subject:From:Message-Id:Date;
	bh=Y8cDYNeOIpO1PyTGR/llhwgDJE8knRhoWUERwo3TdWk=;
	b=CylRNR8zQhifQdm+vtRMSM1bFFLRxPIGqEsDf9ZXZ5lqtJywUF+DOFbfFkJCPW7V
	BFju2Ha2Rn1DWvPfmd2CNfpkJhzHFTcgco5l1/OpqY12TyoE8pLjjfRdG+e19pDKdJZ
	FVdgeAZDd0R4JVeZ3oenZab635ykHNfY2XIIRQp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661279453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y8cDYNeOIpO1PyTGR/llhwgDJE8knRhoWUERwo3TdWk=;
	b=Eukjpd7mzi4UKlEMPXuNH/RwQs6OTqJh8bBGFdkopinwIYZyv04VA/XfkHO3x3jV
	K9/h6Ut5uFhMBYLUGNnzcgIG8p0vSf5/mVgma9XmXbWsDR+xERyXowcfilnpXB+cPpR
	l7N8gm13Q3J5KWzhfXDQc1SUyd97GsR8tvtMWfgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cbf8bd6e-3d6e3709-bb2e-4d16-b197-b77a4ca348a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67b741206dfe602be47315f1ca8945a1290f73dab6be95097cd65da4087c414a
Date: Tue, 23 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661279452

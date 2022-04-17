Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316A6629
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 12:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650197278;
	h=To:Subject:From:Message-Id:Date;
	bh=RLpnE0kDXuOrGpAf4xdfv0Ws0ob0nNnBvdxp7zH3Vfk=;
	b=lBKeedtaSPKX/16mFEfJuQj9jD1utCaKVsQhdmPRlnbM/hycZYeeyKXRL/i2lBK/
	+XAcNj1ApGZIcLfrm4rDi7sQyooynV2zZLR086zsyeFAyi07WUwnjXTRvKsh0WfdpMk
	lDr+LNjs66Vis6zhdSQCgVBxo+Ybz5GbTR4HmtPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650197278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLpnE0kDXuOrGpAf4xdfv0Ws0ob0nNnBvdxp7zH3Vfk=;
	b=Cw8FC/g0mk0hThMNK9+n8b2SM1cDOuULvCUycUF+dG1n5SmtPIbYvgj0n+nmGYIN
	Buqmr5zGKPWP9+bM5NJo83n8CgHBeZ73bfg5PW6TOlvDv+V4k0c1WdI0C/GZ9AInJKf
	uLuH5+jI4aK4S9qWXuwkrVsMZNodWOj6CJ1V+0ws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180376c2ee7-7e745f57-f40e-4b49-9ee8-4e02dcf1b76c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4d026e455b19b5083a4ec3d61f8c427697f52b699f6b9fc492a5401a6d6bc09
Date: Sun, 17 Apr 2022 12:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650197278

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A08B33D5
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658305012;
	h=To:Subject:From:Message-Id:Date;
	bh=GHVzqn2ce3E9zdjPigF5pdY/bmS1c9ureGdUrJZC3Hk=;
	b=CMd4aArT11ThrzX78t4gxnMG8VvKimXfl5ar2Chjj5jcateRA9fJ4nIS6GOTa9Az
	yIrxZIZWew6Glp3jhJtvuhjRKtZUNt6zyf/2+V55dDEEi4DIPK1vpNY2M0SvoDpdF/p
	Wpjbqbi4sYlUaD/wZDPYn5tODQXACWagNRM+FM1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658305012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GHVzqn2ce3E9zdjPigF5pdY/bmS1c9ureGdUrJZC3Hk=;
	b=HDhbqWGBvRi7LTLq1djwEBxhc5ySuKy97sT9TDYmvy10COtVYa6Z2d/cuSBAfjJf
	0a8F0LiPY0nPIBOU+GEDvp4X46Ht5PS4BEQZN1rOp14pkxM3otGWFCUY82xz7zd3W5y
	1YQmT4X1OwxZg73eJOmk9ly2pRAcVBXN1zLjdXQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821aae625b-5b45b09e-b523-45ae-ba97-44eafd949c7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ec069d2ba21f7e62d21eac825ea978b36b05daf9768ed06b3df5b9bb64ce7e2
Date: Wed, 20 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658305012

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3A67A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 17:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650734338;
	h=To:Subject:From:Message-Id:Date;
	bh=4mlbnBG/cjl57qayFWMRCl+JfD57qvUiTNsIKSxvyGY=;
	b=QgFGNdaVIbUE6Ar9nN6Vz/ZfzLi2dAggB5XZ+ETgm1RnAQr1gZ99ppqWncsTrNJo
	7DzYJKt/yL6H2LvH0HVVjaICmVs+sGf7A/R5KTvXZXPGendnpWm4cy6fSFcYjatYEcO
	nti9rHuZzuncCT58Qcx7uKoz6TeGaY11YKcrbqYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650734338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4mlbnBG/cjl57qayFWMRCl+JfD57qvUiTNsIKSxvyGY=;
	b=gEn0FfJJLBt1Yga+EONq+f1xG/4sAuBa0eI1NzkFl6+8L3YcyeiKk1LNTVyUePqU
	hTgwoW4qERKO5l0gQ0cZupEXDUdz396mdzGc15BjHv0yRtKluDPQkRKOYl72IN+bmn6
	mHxv49Ko3YrcSw92mrXjbHt+aFVm2HeXW+/QL0Dg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180576f10d3-0b2a7031-745a-445f-a91f-cad07c80c8c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6b93874cff91da85df3c31f9dd6ccbb356c97bf0fde60ae35ba09b6c1f9fdc9
Date: Sat, 23 Apr 2022 17:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650734338

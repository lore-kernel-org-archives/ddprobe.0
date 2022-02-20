Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B706130
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645397185;
	h=To:Subject:From:Message-Id:Date;
	bh=y03r+kkhA5BkcymldFfrvu32uXiTKvW60sB/hAiwnTU=;
	b=jlscqoBx6Cnx+zgqzNy9bFxyp7Jyil4Ey/REDnVAsMK9Zu5sjN3lIIM76xq5e0kX
	BpeirI0Ss0GAWVCDbR7FNnl7/oGx+E3qnDS4X/4HyZFo0bKJLRoUmm86K5UMsCOi9c0
	sy31nKf3rXst2RpQni/v8RSqo9UiRi4yKSI/m2ZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645397185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y03r+kkhA5BkcymldFfrvu32uXiTKvW60sB/hAiwnTU=;
	b=aPDsU8rLPZWR58AwQqm04nyo5pLgrPpGBxzBfeO2wZUCLl4mIEqBWZ5OIMmte9Fn
	ZK3BulTczyTRuiVbexKt7BbKCpO/+Hbq4t4WJ07wPRg41IUV9kZUD6dJnWEz/UM98Ei
	vZdcEzeJEdcAC7z8K5xHnK/MvhyaZy3qdJmB20L0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19509122-c5c7a3bc-1207-4238-969b-b52d234b5041-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e32d6c0f692b37d83b88497f4a91b15ef340dacccc3d8f35fde17a8f8eb66d54
Date: Sun, 20 Feb 2022 22:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645397184

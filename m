Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCA77C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656224212;
	h=To:Subject:From:Message-Id:Date;
	bh=PIYh/kQiU3s56c6EaSpI+BmaeY1mf0rOVEHcFb7TjqQ=;
	b=fdPxHL07FAmt2p2qAZaVHJU9mIvV1CCeujpOEUlPFHA984Sj7sQxSSt26B/3802/
	QnMSxOa0H8FfAzscrO6jkoEy2VzSI94GqxDMWMep+DkMf24SqxSsEYjVysNFpCr3azR
	W3f2cm77o7qIx6OLknHp1j0Riggps9+1T45jJFH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656224212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PIYh/kQiU3s56c6EaSpI+BmaeY1mf0rOVEHcFb7TjqQ=;
	b=WcXXKnYqJyS71no14TORLfhLa3BFlfzRnQt4AKLLQwjFjNUQkyk+QsSe4Yl2BWwv
	ynVhWpFHOJG+2ECrDdNRHR5bS/UDmufCgymiqzHZnoMEXjZ0n2WBbt/Dq9vDWy3mN8D
	WX0ta7C266NVZxO/g8v1utTMogDm3yQJL544tjKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ea7e56f-d5105e2a-2793-4042-81e4-dea06441d8ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c46a803386fb16aa79a5cbac9693b9f8042f9f879587c42f5e2d2cb0c55a57f1
Date: Sun, 26 Jun 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656224212

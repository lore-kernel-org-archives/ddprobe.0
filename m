Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06CA7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647728784;
	h=To:Subject:From:Message-Id:Date;
	bh=NGXe00/gOV9olb7QlwUAbsqDrnyaLqUSCKAn2VBzWZA=;
	b=hqW3muXvBMp/e6hhG/yBRkZuLKrRpk/ympfQ40RANAL4VgNI4ffg7d1CG2KAd5ch
	U2u0TCKXOvSWm7C5CafzqHJLCYU9b3iRBUnyWdkmKL8HbLxEBlnps1grnU599siURP/
	4YO6Hbu2YLgalbw2o+W3oSGUlGscCqEqPZNHXlmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647728784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NGXe00/gOV9olb7QlwUAbsqDrnyaLqUSCKAn2VBzWZA=;
	b=BiahtEWV65G3ZqSBtQSU/GoadDFORCXMW4aCierOfqIkNM64/YajmUT6i3TqvLxu
	3YP9TjbtvnJLiWI7Kf4X8HC9xp2kpiC2p9DGEDJ8NkDlF4RKT8fn3+Qxf0BlTBgsnlQ
	aIypI3oB3If4HENxu47V4XW0xwaf7a6jWoHMBOks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa449f5c1-dd0426ff-528e-4ad2-96b2-24e616de6a50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74de4d3f3fecda8b682badec768131e2c34816dce332f5c3ef34e93d12ce1ac6
Date: Sat, 19 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647728784

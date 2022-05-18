Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265A746AF
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652899079;
	h=To:Subject:From:Message-Id:Date;
	bh=tDyhFem4DFwnSzdk8092vMra5G/ODXJUz9LoMesOGAU=;
	b=SjsYRxoUz6gVUBqGtFfdHBN3OctL5FtX4jMUfso6jN/ElGLSXCCNsO6jd0PR3wEQ
	EpbFs92ZAeC0mhbMvCIT3EImZ5jxTIXL1XY+kZH5c5VOp86CBrlMRaI48ey8geceRdV
	V2NEFvFjMQf111da66EuHbBpcYU27iW2ojLsgMpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652899079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tDyhFem4DFwnSzdk8092vMra5G/ODXJUz9LoMesOGAU=;
	b=CQoOJhN8umCC6dIYHuB1sqelJ1JfG2dJVZM1fWuaNBdrkC75zrB673/MBRjK51jh
	j7uSIzjk9b9cpRn77Cc+kV+879+g8OzaX760yRgDBUQAE0Z7VFRTSf3bmNsu7PB0A2k
	2awVm4iYemr00L3CsJtw2LQB0Qrc5KCVfz+EIxQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d8766478-dc4e79b1-acbd-4165-882c-c5535a6bb66d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ba5bd5571aebf68615d0a5091d2c93bcee558f7bf0c3c2a42280851426fd50c
Date: Wed, 18 May 2022 18:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652899079

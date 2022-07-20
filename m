Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427C84405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658320012;
	h=To:Subject:From:Message-Id:Date;
	bh=0gjC0+UV87vjWUMIEI2pu1gks4nju8jcvJxHdiF+Yv4=;
	b=Go23FATDIiW0CuT7KCu5L8wEHZ8oFwomPS6rKWNyWmhWsR+f1T53FIwbCP0WFjEn
	tGO7tD6/po/PGozs1mod9xrZRH0srEsyGn9WS2a4Eg3A9nVQB3PMK9mhkYjnWgDiGfE
	mruuFSU2eqIpCfqsPGDAbIYVVlwDrOpmqw65fCIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658320012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0gjC0+UV87vjWUMIEI2pu1gks4nju8jcvJxHdiF+Yv4=;
	b=Akbd2uquDL1Pl2XgUXHOnrgQa5eJL0ArsHv14ickdfCgjg+GV+COHPsVy9YQzlVN
	478pGiToSbOwyGuQgUB7RfKca99oyAKvCrar+9VW1PijsiYvfAodqIQ3uBUo7+9lhJP
	EmKBlBCZDWechLIsGhcodK11MNi9t+J6dibr2ZJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b934405-d31c7565-c7e4-4a91-99bf-ff34a74e35b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 193824137e7a3527570d8e68d5987e608141d7285ee1b94c6136762a2b96887e
Date: Wed, 20 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658320012

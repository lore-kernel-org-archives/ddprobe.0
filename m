Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F8A7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 14:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654870619;
	h=To:Subject:From:Message-Id:Date;
	bh=gDd+NSnNb3DjBQbk0+TBSCU6APFGNKHnPYEzep8mxd0=;
	b=XUDgOgEnsSYfd0D3E8SBGqAIJ5BzIiMQlasl4H8EWltY4c0gCTiJ7Ly0gqY43QsN
	s8/oamO3ljuDouVnxn4hEec46qBeXThkk+Uk08/bC20v99MCtBYH5q5nxI1wItSIxMc
	acMbZuGDpQw2x5ATg9E05wSJderTTvexdGl2Vc3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654870619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gDd+NSnNb3DjBQbk0+TBSCU6APFGNKHnPYEzep8mxd0=;
	b=CxeMlfXzlCle5qS74t4JLWUucWm/2Yac4V+KhSo1A+nuDCDEqGvN/UiPVAMv8x0i
	Nvwp3cHy7OIf3HPiHtn70cKQIvikzOAe6UQ9VtgjKOyst1Spu4URt7ixdEQuMKxieN3
	LJQhj71R+X8Sy/oUcfkNjXyBfRHHKmnVzDeMsMYs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814df9b48e-c1f6c8e6-a838-424c-83ff-a48c377b72fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9241b40718c03c6f24989a5f48e90fa0955a6f0492bd8b5d4c0b64bbfc4e278d
Date: Fri, 10 Jun 2022 14:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654870619

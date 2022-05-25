Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB15BA47
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 05:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653456719;
	h=To:Subject:From:Message-Id:Date;
	bh=sxFd6riF95Imwz004fK/pg8HYKMxfBUQ627JH05k328=;
	b=R8O4DWVQj7aRq+XfduLgRwJ0Q20oJFctWTMPBrTVASac/2XN5gfPEKcj//2Ub1yF
	vRsN3Jqjp//69sv3F8Epo/sCDx7KK41nCJ4uofuaKOJmltxaV1nslxRfv3Ud8B5f5lQ
	685gINerCepUq05NQWTp493I/aZCntI8hA7k8Ktc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653456719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sxFd6riF95Imwz004fK/pg8HYKMxfBUQ627JH05k328=;
	b=Honbx6xCoj2yRSLTjKsQeTDIqSznkTYTZUvebphpUzsYfSUso4pTSUXGJq4mRbLr
	AP4GGkNbd7SubrKEU+fYa8zhlQJtJK3bwFAOp2EaH1F9jvUHSb1bjWPUTIg5cJsc4MO
	P9PzvyVrwVCU6D2B42bTLPjZMBprElUGrZkRzRl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f9b34d83-46313340-26d4-4a1c-9f41-d80cc8ff8385-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c6e4c70ac840a5756fcb03f26f4749e24dd2b312c73618abfe286ebcf72bf64
Date: Wed, 25 May 2022 05:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653456718

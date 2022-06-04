Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384D610EC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 01:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654306439;
	h=To:Subject:From:Message-Id:Date;
	bh=j2fpsdIaXQdvYqIsuHx2XqAeJKcjI654qnJ+SIoFRVE=;
	b=OzIq8C8skECx/2LksCbVP1N+ORJ9oLIsPOW6vu603RAAGPdgHUF6j5yocduHBrxN
	RW95x8B/FKsNEYDp0CFkyQZm3NVmZLnO9iDs6ZI2Hld7ACdIRXwRQkbaW0A84XhF09f
	Jg+SPzdADfWeheIjGUO6MoYrOLnzRk5tVSgThxMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654306439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j2fpsdIaXQdvYqIsuHx2XqAeJKcjI654qnJ+SIoFRVE=;
	b=c0InA825PW4lbJd5fbvgBVONHm/INuedHuO7VibUfOC/SgmMFSLHk7BLh8Y7gq7p
	56xxRm3B7EITgpLQnb1nEnp4SncHrQNXBssEIH3r6c2F2cYzQyheKM0LPP5YTZ6RS8y
	ZBgau/MbUMCs3n13Zxv5UGQNf6p3on/WgiZvPbXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c5900bc-61ee3d38-df51-403e-8884-4a408470a688-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 627cd7a3dbaba6d45cc051ee417865c695f96fa217e31c5ea17e248aefb0274f
Date: Sat, 4 Jun 2022 01:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654306439

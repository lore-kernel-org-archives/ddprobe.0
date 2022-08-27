Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC027C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8278FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661585452;
	bh=A/xxR4N+ZJyrGO/UgPxldJh8KDAzd0N3armNWc07/nw=;
	h=To:Subject:From:Date:From;
	b=sn3sDk4p6npw6anydmD6TJzAh0pevuiN4oDXfQerLfpJuDRGT9jkODNocu4CSa2QX
	 BFi5QLZiZY0yfC2oQKYxQFKI3Jf7Q9PLf9GuNnD3+IEKPxgPpjFqz9mb4gKK/wi3//
	 XDeNrvF3rnW2x+YrsTV5SQS8tS3EC83r6fub0S6BBFrG+qNlfJCBT7wDw1G+/uxlwa
	 kWQ0f/BBKS+KJ7HepwF+hTft4ThF6dAK+8/xtBWLFwkcwsombunxTgaeO5Hh8Plbwq
	 3Doz0+Fu7lA7d4qZyg813H8BsgM+kx79WQKOgUtFDkyr2VzcEyVNe4WXtCsyI1Ggci
	 J3YPIzopwM3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDD6ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158545236.16074.1437928079162993760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af25da855716d4fd9c5f2d6c3dd129ce83ef5ff97da9067b337cf0ebb3d75f6
Date: Sat, 27 Aug 2022 07:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661585452

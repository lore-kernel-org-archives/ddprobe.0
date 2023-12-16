Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96F318EA0
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lExjcQjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B064C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702718896;
	bh=oHV3hFr/qi6ttWoJEabObEgwVCMK6a4IfP9uTkv6lTM=;
	h=To:Subject:From:Date:From;
	b=lExjcQjrg3xwFDKNhRjAvcIgCPIHb2abEBJ0mZ8aRFaSEh0Vr3irrneVrqImppzoI
	 MyhDm0JKS2UjHBPfnXZl5ScWamJAHWxZ9dzrL5/Fl0WU/VKvWMtaI28UDZvfiBkvpu
	 nAWfBzwSF47ZsuQCHxlvdTtcgUPvHSOL9fteSTUbG/4VdXQ2B9o1Pz0i35DRW3r/8q
	 gm6bmJhdqBvW65cqGIbBKODMNoMHUAkDjahb4/pqyrHNRwwdVAkXp+LB652mIiWvx2
	 9I1mRYIiAKnd5ZP+iCDHK0ri87gSnh+Go1+dBgJqE9/E6ndXa8wlhLLqzfm7uuF+Gn
	 TBvK/+fAQtqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9A3C38147
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170271889637.13184.9582166141901843323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f4cd77c0387d7ae6341e6d56d4620a365fc87927a7ec279aec99a1ed2fc05f
Date: Sat, 16 Dec 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702718896

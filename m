Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D354D29AD
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E602C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664048453;
	bh=qu68k+MJFI+UpbHoGclUMdBvLrhsTPzUwK7FlpmgMLE=;
	h=To:Subject:From:Date:From;
	b=PpEAZapYp8aVXJTXPc2cQfjKsraG1a8eMwkSRm63JTICW0lJiSsoumEOX+52Usq97
	 Xr5FX5K98WVcCFg675gYu+sX5Wry3rCQFp2RQjupMqGhQIVILBniPvJ+bBtBTj671g
	 YJI5/Fnk6kl9ISH683kHlZH91mpdYRnB6KNxpKXfqmkkspbfEao+bV3r8dmA4wpcIm
	 noyqOE29/3f+c7K4e4Zg8tY9ffEcjtLNH2HMLRnK1uXariyGfnBSc/5Ipso4iRv9qu
	 n9UpmvS5Wc9WHmPmf4etjyH2zW/UzTAWBdpHFTT+HYuaVgQt9VbUxQQboLak3SEwWh
	 9/fGLE2V5TDug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E98BC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404845333.32435.17740622577126995098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d18b09636c8b645bd170d42cd4f284bb6b2432db0d6868eeb05b18af6ba349c
Date: Sat, 24 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664048453

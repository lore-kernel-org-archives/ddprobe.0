Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11093DF60
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuusJq32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 922DEC433CA
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698659296;
	bh=lr1S0+m4iyWNMo39i42+Y69sNR4RIJIdWDzUi5ob2Jo=;
	h=To:Subject:From:Date:From;
	b=iuusJq32YRr3+YxTcssHoy79IEmIax0EIMaMhDuZMhq8PK75mlKo4f8iRapeL2KAU
	 EAZtBVjECif32A95EMuhGnWyfIJ8mHg6ZG8HjzA6zGmUkHCPn2JLOMPCl7Pm7ANnib
	 /cEg90Zjv0u0Lp7iY1qM2YGSGd01FzajignnWqBwqLM42j5cL2DQ06s0kYyrJ+0SNA
	 wWrrDTwfg6qqO+qu59juujV2LyH0hiDT84dVDeYqhoMqRqGfzU+RIU2XowN/yd8mhT
	 E57lQgrC6gdiSmbJuMW7dCY8rOJQxsNXq9CrwWt3OWM7klA8FKQTeAhqCaS4fpvyti
	 IAjpkrtk8N5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 725D9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169865929645.13915.3607142040817349436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac40c887be97fb32ecb8dc1754d6cb9d0461b20b8d8366f9cb7aa4f5737619c3
Date: Mon, 30 Oct 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698659296

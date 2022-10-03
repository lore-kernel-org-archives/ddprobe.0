Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD09917C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B303C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664781053;
	bh=7fuzW7z1+aHI7abu4raT2xK5nBGDtsPqqZ2DqCfGoVI=;
	h=To:Subject:From:Date:From;
	b=mo5ffx0mWmL2HsEfjnfghgWXITn4oTzmgwmdCa3rOgRzVZp62nPVBkdM8i8itVfM8
	 dnF84AHKmZE+cvNBJ9MDIdWsu/1hYrqem8ldt83dJG6yWsVpq6SaNFPzRhX7xNT5eY
	 SyNPyk0jbs7OyBWQbHosXcIbY6biL2v1eX11TEAtaL5HFIAN9VXem8wT/bFuCT65mN
	 mTN86dG5VNKkv0W4gUO0lma7AtnHUTaXefzZ4jIO5Wytyt4Cq/pT4Vcg3gl2OEFKND
	 ifdA+POBVMMTZEhnEFQdC9Wt9PWn5vF1p7juQ9xsYXN/VRTg2NxWoMnaHwJRnySdjd
	 8yhnKN/Z0q0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53795C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478105333.1660.2554047768645806619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a448db90d7914a9ae4a8c19407f5031b7514d0fb181cb8f30fcf903338bcca25
Date: Mon, 03 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664781053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14F615CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86092C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671736287;
	bh=yheFQGJqLwIPvvJhycqRwOJ6kVMaewhI0hevfwrpY8s=;
	h=To:Subject:From:Date:From;
	b=E4HuEhAVQ1YdqDkyFM8oXPozLygCO/UVK8KI7OFTbF9a5AbJWNvM6ZUZIWRHiguam
	 m2iO5++OXNKQD6cftQAZh80Paz1NClTVDe8PFsnaaNmd8m5GUzfWSjGJtNnl6/vK25
	 xGjH0jnDmPFwg3LpMFrBPcG9LuqB2qTQaTWkwghn1MH/ByBLM2hxNdx96tRugtAfrZ
	 wRZcb/zOS/gZTuH8EpKK2PGvmYEg7sTspuhJgmwW6aEDZJ+BTKIKa/Y2ElCXhTCLBa
	 JvNKPltCKYsiv4tPMm4Yw7+JZR0Ue5SxwyKL+m1zvia2VDiPVuABng/C8hk9bzu00c
	 4zzLmdji8Krpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666E8C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173628740.26528.13161274508170891598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8803b7b4f2ac154f2fbec957c92b3eb572e814e8166f302f0338964082373f
Date: Thu, 22 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671736287

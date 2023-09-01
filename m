Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BAE15B5
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 05:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0780FC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 05:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693545849;
	bh=SXraIc0707hORtkCaVilpufUrh4nmYb2gjnVQzDPKmc=;
	h=To:Subject:From:Date:From;
	b=bxLjv6FdJs7N3QtGRHMwG0Pg0EY5XfBvP4Pw0zkXizwhXCr2le/FDoXXV8rk0zeAZ
	 XDrw2vJHAyWVA9NvUF2Ybh0xylj152jYqlaMPEK4LemhDQX3SXWLT73H9BfBO21EeQ
	 rJEibgEMhsfPNjDZvnnAYTVUprmPg4oOxrhNtPb/yxPlakylrQw/FAoy4fH7gHFxAu
	 hx2hFTs6hfnwcf9weCivCrQ2kg6iCrJ9K/9aOAr9J37wrLJT8tiMZ2UZ76Icq6VQwJ
	 6w62E059KN9w93j+LdV3BKjE8v/0hRjnnhki/p86VJN0LtTMSpze1iPTHeYdHPN8Xg
	 epLkwXVziCcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEAFFCA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169354584878.10812.1879333426366908877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1651017f2699bd93c54ba65bcfd924460e6c34d04a3f309404ea6de40ae8e8c5
Date: Fri, 01 Sep 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693545848

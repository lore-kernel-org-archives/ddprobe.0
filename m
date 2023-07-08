Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0FF15B2
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 03:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80EFC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 03:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688788628;
	bh=MzMuA5iGcKVL+hmUgvFA03h88x362DEa++Jk6p7XtnE=;
	h=To:Subject:From:Date:From;
	b=QmKKNcR1G4sYIB0VDstUoGj7gSMt/L3wqTTfRlb5mgmQ7D0zU89w+eyxpO61lzXGu
	 5uvPmkvmGxfgP0P62nsHwO9fCazDfRtI5l7zfx0GiwPp7VSgIBC0IUYIMEPlE4wlBO
	 PJDdWhgrzVRprfSUNriqmyjsZ7TkEsLp2sPJWNuBFxyDRzAYYBfbQ+1NeEnCEQP+kB
	 CyonOW0ydOLCRrb29GEgbBcMOnSI06VpYpMOCYeCgrcb/uoOTuOdbj6ifw0mpfm0WY
	 M2TgPxNVFkUl9iDifAD7EhzgmKvlUZ3jXl++htezq2ao/G1q7N+vGV5pafoFkCKlF6
	 BwDk3xFXgMdfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71B2EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 03:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878862866.647.6177749481648851382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb19c6eb3300def549f9b85f790fef4fbdb8de5aac944b0cfc022f74fda16b71
Date: Sat, 08 Jul 2023 03:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688788628

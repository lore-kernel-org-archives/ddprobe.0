Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5D57C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E35FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661719852;
	bh=T9mUR1cVxvA6O4oiZGaT4E3Qoa9y0iSvTAiUIIAUZmE=;
	h=To:Subject:From:Date:From;
	b=Dm7dDz7wYGujP5n8B4bZeMSz3tQVrBpk/5d62xp0cfex6K7J/Se0ESDA5VGkwZpx0
	 XxCV/X7xJY7KgXcQgV9Pw5/tBGgW4hwrmuXBCufR8Wsbs2ybkhSfR16rJ/GxYjhqdI
	 vO3tRE9wUlR5Hm1Hj027E67pziZ2g6QPH77wQ+DcRgOMEw+GteG2uceZgipIMvu1lM
	 Gok3ITNuEhNP6+AQvSpmgbFFaMRHJLDN3dz0eVqSMGAhjEuy7dH7XVdxt+2Dj4xTod
	 0xlIjd4c63mdtwNizOAMgdBc9unl8rT67FF65v3kjcxo+eHiKeFdyksdXTieJuw2O8
	 OBiiymP1PTmIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6011CECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171985233.31462.3518385869126172003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cb340502eaec0b7302e3fdf2258373b05c771baac2fbdbfbd04fc7c7f32db8
Date: Sun, 28 Aug 2022 20:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661719852

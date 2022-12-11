Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AD81857
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 912FEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670752887;
	bh=XGilREDNG80j68xJWxKUji8IBaQ3KEiTrMH1d4s7fn8=;
	h=To:Subject:From:Date:From;
	b=mWhWfvrK1t7AuPlxfQnubZGi+Xn7jryRafYgYCT/xvySJc7G8OhqrzPQHRiWBzIlD
	 vM8I+ZFx/GzNGCqCxUX5sNDQkIdI62EqssKsctbQJy6I9pIKQbuAUBSXLGUNAfXJ7+
	 QixsSmUS4kWIQbJmB8vvHzWp295+0x+7dDRorQsVFR7mfhVZxGAqQ0BZZf2SbE+dyN
	 o5A9z/ZKAiK68jMobJu9gUWxBrvGkOeTghK8imi/RYFXLKCuzZF4LoleLBMtUa2Wlk
	 2Pviv/f3MG0IM70rAoleB/mxLZfaoy2nLNYEq6Ryo6C/LyAxvdYVREd1F8L+XDpSR2
	 YDYQRNdZrqrjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74EF2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075288744.15198.14301624368980836826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29c6b4080938b078f55eb35f431b59b301829573e5f783a8a75843109d849e0
Date: Sun, 11 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670752887

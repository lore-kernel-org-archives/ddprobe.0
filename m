Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A174A1C
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 13:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C704FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 13:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694957108;
	bh=8QOhIDpQPd+ulwUQgRIGVH1GPe2EW0StXigRuvOK/ws=;
	h=To:Subject:From:Date:From;
	b=S9VGebYgC2FQsx/JlLmpAUQ7ziLmlUEqGa0MRQDvFGqBghjh3wHnJe+vR0OvdL5R/
	 UN2avW3/knONWY4uvSMMkRY6NpcKFtCXvuNujWcO5u8LTNjOpOpLL4lVITjP3Sa6OF
	 OQKxCO8KwDGybNi/KXZLSQqZKDknj1dtSzyuxPP5dI/6wMhly4CCT0tnp+/C2r0iIR
	 uSrwrEPyI2LNFE2ZEv4MolrehxH9qDbG1XNI/c+MrzlkfIHVDMVyxwbYai+acAjf9g
	 Rk84/wCe6MyffpLCdBWtpZ9EzczOYjqUNXETH4qRyW9CpYBxZclFuHptrD8/I8ev1F
	 exaXNf49wn6mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD530CD37B3
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 13:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169495710868.551.15072713073562952263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72151ebdebe8140a8e04f8b17bed7951421c5c2542aa05fb872ac56103dc552
Date: Sun, 17 Sep 2023 13:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694957108

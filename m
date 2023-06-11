Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDD115BE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15123C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686486126;
	bh=+y2j2780wcbLYOSJuCLl/TsDriYg/mjBeIqErgVJYKo=;
	h=To:Subject:From:Date:From;
	b=IqruFolLrjUByl6YA9wXHNuh8vm5KyPxNF1jlC7dfkZxEV1RiOXbMYiHeJnwcvkLi
	 ogKllyF0AJNP6059ASomBreTSFU/f8kEnjc9zuAkNzZAaTUjerQNmiNrOOxkZGKWQk
	 Qqm8EFPeCapflT/NmkklJ5OqaH8u/tNtawcl5pMurhOgs8iY/bPNB87GSi868kwgR9
	 eoH19kJS1BNyAAQ2lieQ4HlSa+p16k9Oszarce2Kwi3JS/EvkDMsbCeHI+Kr5Zp+9m
	 wh5aTjFo6ZXKauTokbKWpCpF1xbNkMMnJtU1coivTBbKUmZ3KD0MzaF+K8nUFR9JJh
	 4LSxF+ZihRnxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D98C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168648612582.4551.10363127209823478857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46846a3d019f26eaadc05c68ebe2ff43aab5490f47f63519b6a69d12e792775c
Date: Sun, 11 Jun 2023 12:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686486125

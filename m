Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA477492
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/yJmCiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96618C433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705115296;
	bh=aCoRvYMqzzfTD06pfDEuuXtp1sdLiPOtr4DPwhPZg8A=;
	h=To:Subject:From:Date:From;
	b=t/yJmCiCy70Kitk5H5FHdv6gf2nWb41k0IRu/jA11ZVXuZxdtK4YuhWaB1nbSFzXT
	 lo9iXHcs5ETSkZV4VimK6UjueCcidq0zUEPYR09EF2i80CS/x3Ura/H+SAO038w0Tj
	 asfd9NjaqCXivdlx1o8gYk1ZUlYQgc7NBVlWxhbD1fuSarW6P99O8cQFPm5EzJnNUl
	 RMqjU2sEFX1phdp+Wj3pEPhW72zTZNN4EZqd9cHCKIAIA1heZXtnBFPXifmg1KEkKu
	 XIZI5O2qS773TECq7pAF9LX+uq9sDk7DEcZaZ6yE496pY6gTgA24sQ0kBWnxkRw99s
	 jUJkiuxDo5HSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7849DC4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170511529644.8485.12712255952699174409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6702c818e6f5ba26eda22d77e7b3d90031db3f043066c11db5f0c29c67d62f37
Date: Sat, 13 Jan 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705115296
